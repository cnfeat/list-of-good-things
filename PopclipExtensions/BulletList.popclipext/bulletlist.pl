#!/usr/bin/perl

# ThisService Perl service script example
# Service type: Filter.
# Revision 1.

# Perl practices:
#  Enables strict mode, requiring that variables are first declared with 'my'.
#  This, along with specifying '-w' in the magic first line, is widely
#  considered good Perl practice.
use strict;

# Unicode considerations:
#  '-CIO' in the magic first line enables Perl to consider STDIN to always
#  contain UTF-8, and to always output to STDOUT in UTF-8.

my $result = "";
my %last_marker = ();	# Store last marker used for each list depth
$last_marker{0} = "";

my $last_leading_space = "";
my $g_tab_width = 4;
my $g_list_level = 0;

my $line;
my $marker;
my $item;
my $leading_space;
my $prefix = $ENV{"POPCLIP_OPTION_BULLETPREFIX"};

my @resultLines = split /\n/, $ENV{"POPCLIP_TEXT"};
foreach my $line (@resultLines) {
	next if $line =~ /^[\s\t]*$/;
	if ( $ENV{"POPCLIP_MODIFIER_FLAGS"} == 524288 ) { # Option, use numbered list
		$line =~ s/^([ \t]*)(\d+\. |[\*\+\-] )?/${1}1. /;
	} elsif ( $ENV{"POPCLIP_MODIFIER_FLAGS"} == 1572864 ) { # Command-option, clear list
		$line =~ s/^([ \t]*)(\d+\. |[\*\+\-] )?\s*(.*)/${1}${3}\n\n/;
	} else {
		$line =~ s/^([ \t]*)(\d+\. |[\*\+\-] )?/${1}$prefix /; # None, use bullet list
	}
	$line =~ /^([ \t]*)([\*\+\-]|\d+\.)(\.?\s*)(.*)/;
	$leading_space = $1;
	$marker = $2;
	$item = " " . $4;

	$leading_space =~ s/\t/    /g;	# Convert tabs to spaces

	if ( $line !~ /^([ \t]*)([\*\+\-]|\d+\.)/) {
		#$result .= "a";
		# not a list line
		$result .= $line;
		$marker = $last_marker{$g_list_level};
	} elsif (length($leading_space) > length($last_leading_space)+3) {
		# New list level
		#$result .= "b";
		$g_list_level++;

		$marker =~ s{
			(\d+)
		}{
			# Reset count
			"1";
		}ex;

		$last_leading_space = $leading_space;

		$result .= "\t" x $g_list_level;
		$result .= $marker . $item . "\n";
	} elsif (length($leading_space)+3 < length($last_leading_space)) {
		#$result .= "c";
		# back to prior list level
		$g_list_level = length($leading_space) / 4;

		# update marker
		$marker = $last_marker{$g_list_level};
		$marker =~ s{
			(\d+)
		}{
			$1+1;
		}ex;

		$last_leading_space = $leading_space;

		$result .= "\t" x $g_list_level;
		$result .= $marker . $item . "\n";
	} else {
		# No change in level
		#$result .= "d";

		# update marker if it exists
		if ($last_marker{$g_list_level} ne "") {
			$marker = $last_marker{$g_list_level};
			$marker =~ s{
				(\d+)
			}{
				$1+1;
			}ex;
		}


		$last_leading_space = $leading_space;

		$result .= "\t" x $g_list_level;
		$result .= $marker . $item . "\n";
	}

		$last_marker{$g_list_level} = $marker;
}

$result =~ s/\n$//;
print $result;

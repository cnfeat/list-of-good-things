# U2515H Mac 开启 HiDPI


升级到 10.13，以前的设置可能失效，不妨按以下方法设置


声明：以下方法仅在 U2515H 测试成功，其他尚未测试，结果未知。

首先根据以下 @若尘 的回答设置

[请教一下如何在 Mac OS X 10.11 下开启自定义 HiDPI？ - 知乎](https://www.zhihu.com/question/35300978/answer/68752378)

如果不能，请按以下方法设置

1、开启HiDpi模式。打开终端，输入：

sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool YES

2、打开文件夹

/System/Library/Displays/Contents/Resources/Overrides/

3、创建一个 DisplayVendorID-10ac 文件夹

如果有就忽视

4、复制文件 DisplayProductID-d06e 到以上文件夹

文件地址：[DisplayProductID-d06e](https://github.com/cnfeat/GoodThingList/blob/master/DisplayProductID-d06e)> 可以打包下载这个压缩包[GoodThingList](https://github.com/cnfeat/GoodThingList/blob/master/DisplayProductID-d06e)再解压获得


说明：DELL 的vendorID 为 0x10ac，因此要有 DisplayVendorID-10ac 这个文件夹。
U2515H 的 productID 为 0xd06e，因此上面的文件夹里要有 DisplayProductID-d06e 这个文件，这个文件是配置分辨率的。

其他显示器，这两个参数可能会变。

5、重启，打开 SwitchResX，你会发现里面有各种已经激活的配置


### ChangeLog

- 2017-12-02 创建

- 用终端解决MacBook Pro外接显示器发热问题 | 慧行说
- 
https://www.liuyude.com/Using_the_Terminal_to_Solve_the_Problem_of_External_Display_on_MacBook_Pro.html

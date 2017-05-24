RSSMethod


# RSS 订阅指南




## 微博 RSS


[微博档案](http://weibo.wbdacdn.com/) + [Tampermonkey 脚本来跳转回原始链接](https://gist.github.com/Linusp/63e3c688c2be2dd72cc19502423fe6c3)

From：[如何用类似订阅RSS的方式浏览新浪微博？ - 知乎](https://www.zhihu.com/question/20736965/answer/142343588)


[用户脚本库](https://greasyfork.org/zh-CN/scripts)




### ChangeLog


- 2017-05-24 创建


-----

需求：进入网页一，跳转网页二

网页一：http://weibo.wbdacdn.com/user/1783475181/status4110730313773165.html#utm_source=rss

网页二：http://weibo.com/1783475181/F4v8XfPzv?from=page_1005051783475181_profile&wvr=6&mod=weibotime&type=comment


脚本如下：


// ==UserScript==
// @name                Weiboda Redirection
// @name:zh-CN          微博档案真实链接地址重定向
// @description         获取微博档案中的原始链接地址

// @grant               none
// @run-at              document-start
// @include             *//weibo.wbdacdn.com/url/*
// ==/UserScript==


(function() {
    console.log("1:" + location.href);
    var get = location.href.match(/weibo.wbdacdn.com\/url\/t\/(.{1,})\//);
    console.log(get);
    if(get && get.length>=2)
        location.href = decodeURIComponent("http://t.cn/" + get[1]);
        console.log("2:" + location.href);
})();

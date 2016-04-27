# 好·Mac 使用技巧清单

- [在 Mac OS X 中怎样获取当前文件夹的路径？](https://www.zhihu.com/question/22883229)
- [通过终端命令调整 Dock 栏的隐藏速度](http://sspai.com/33366
- 如果你的苹果机子用久了启动慢，或者是内存占用居高不下，或者是莫名其妙发热……可以尝试一下这个苹果客服的提速技巧。
	- [如何重置 Mac 上的 NVRAM - Apple 支持](https://support.apple.com/zh-cn/HT204063)


### [通过终端命令调整 Dock 栏的隐藏速度](http://sspai.com/33366)

Dock 显示隐藏缓慢的原因，是因为 OS X 隐藏和显示 Dock 的动画持续时间被设置成了 1 秒，想要改变这一时间，只需要打开终端，选择以下代码的其中一项执行就可以实现：

- defaults write com.apple.dock autohide-delay -int 0（时间设为最短）
- defaults write com.apple.dock autohide-delay -int 0.5（时间设为 0.5s）

以上两个选项是比较推荐的设置，执行完上述命令后，你还需要再执行 killall Dock 这条命令才算完（注意大小写）。设置好之后，快看看效果吧。

### 重置 NVRAM 的方法如下：

* 1 关闭 Mac。 
* 2 在键盘上找到以下按键：Command (⌘)、Option、P 和 R。 
* 3 打开 Mac。 
* 4 听到启动声后立即按住 Command-Option-P-R 键。 
* 5 按住这些按键直到电脑重新启动，然后您会再次听到启动声。 
* 6 松开这些按键。 
* 重置 NVRAM 后，您可能需要重新配置扬声器音量、屏幕分辨率、启动磁盘选择和时区信息设置。



## iOS

「iPhone存储空间不足解决办法」

1.系统必须为最新，即iOS9.3。
2.进入iTunes store选择一部大于机身剩余容量的电影下载，系统会提示内存不足，点设置查看容量。
3.重复几次。
4.我的手机本来剩余1.6g，操作几次后剩余4.3g。


## 微信

[[好文回顾] 原来微信可以变得如此纯净，你知道吗？| 有用功](http://mp.weixin.qq.com/s?__biz=MjM5MjAyNDUyMA==&mid=2650490831&idx=2&sn=0d12425c93665efc9c99d5c49ce1b087&scene=0#rd)
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

## 七牛云图床

- [如何使用七牛云做为图床？ - 读立写生](http://cnfeat.com/blog/2015/11/30/cli-qiniu/)
- [使用Dropzone和七牛云存储来优化博客图床 | 闫肃的博客](http://yansu.org/2015/01/10/use-dropzone-and-qiniu-to-store-blog-images.html)
- [MWeb 1.9.3 发布！图床支持七牛、修正发布到 Wordpress https 问题、中文版不能发布到 Medium 问题等 - MWeb](http://zh.mweb.im/mweb-1.9.3-release.html)

## QuickLook

- [加强你的「一指禅」：Mac OS X QuickLook 兼容性扩展教程 - 少数派](http://sspai.com/31927)
	- [sindresorhus/quick-look-plugins](https://github.com/sindresorhus/quick-look-plugins)
	- 已使用 [QLMarkdown](https://github.com/toland/qlmarkdown) 和 [qlImageSize](https://github.com/Nyx0uf/qlImageSize)


## Mac/iOS 网站

- [少数派 - 高质量应用推荐媒体](http://sspai.com/)




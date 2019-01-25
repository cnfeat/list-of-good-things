# 《鼠须管 0.11 Mac 升级重装配置 2019》




鼠须管自动升级为 0.11，各种不适应，忍受不能，决定清洗重装配置。

## 完全卸载

如何干净地卸载鼠须管输入法？

> say goodbye Squirrel && killall Squirrel

系统偏好设置 - 键盘 - 输入源 - 鼠须管，移除

> sudo rm -rf "/Library/Input Methods/Squirrel.app"
> rm -rf ~/Library/Rime

## 重装

http://rime.im/download/

## 安装小鹤双拼

参照[鼠须管配置 2019](https://placeless.net/blog/rime-squirrel-customization-2019#article)

下载 [须管小鹤双拼配置](https://github.com/placeless/squirrel_config)

解压后直接复制到 Rime 根目录，Deploy 之后直接就可用小鹤双拼。


## 优化/适应

- 翻页不再是 <> 而是 [] ，输入英文标点更方便
- 竖排显示 5 个候选
- 皮肤采用 apathy，干净明亮，与 Mac 搭配最好看
- custom_phrase.txt 非常好用，可定义加上日常使用的个人用语，
- Shift 和 Caps_Lock 可以切换中英文
- 禁用 emoji.json，已在 double_pinyin_flypy.custom.yaml 注释，需要可开启
- 导入词库过于复杂，不打算折腾，留做自己手工慢慢调教


## 皮肤/样式

![keWoWQ.png](https://s2.ax1x.com/2019/01/24/keWoWQ.png)

## 如何使用我的配置

* 下载：https://github.com/cnfeat/Rime
* 解压直接覆盖你的 RIme 文件夹
* Deploy 即可


### 参考

* [自定义配置说明](https://blog.dwx.io/my-rime/)
* [Rime\_collections/Rime\_description.md at master · LEOYoon-Tsaw/Rime\_collections](https://github.com/LEOYoon-Tsaw/Rime_collections/blob/master/Rime_description.md)
* [我的鼠须管配置](https://placeless.net/blog/my-rime-squirrel-config)


### Changelog

- 2019-01-25 更新翻页配置
- 2019-01-24 初稿
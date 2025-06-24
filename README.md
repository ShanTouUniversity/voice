# ST.U Voice 使用文档

网址：[ST.U Voice](https://voice.Shantou.University)

1. 投稿到 `voice@ShanTou.University`（必须使用校内邮箱或者校友邮箱）。
2. 自行 fork 本仓库， clone 到本地，添加文章并确保可以正常执行 `zola serve` 之后提交 PR。
```shell
# 先点击右上角 fork 本仓库

# clone 到你的电脑
# git clone ...

# 拉取 zola 主题到本地
git submodule update --init --recursive

# 实时预览blog 更新
zola serve

# 确认更改完成后，请尝试执行 zola build
# 确保可以正确构建
```
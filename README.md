我的 `zsh`，`.gitconfig`，`tmux`，`nvim` 配置

### 安装

自行安装 `zsh`，`.gitconfig`，`tmux`，`nvim`

```bash
git clone https://github.com/persevereVon/dotfiles.git ~/.dotfiles
bash ./dotfiles/install.sh
```

### 快捷键

没有特殊说明的都是默认快捷键

#### NVIM

`<leader>` 键为 `,`

| 快捷键        | 说明                                                                        | 使用频率 |
| ---           | ---                                                                         | ---      |
| `<C-p>`       | 列出 `pwd` 下所有文件，可检索                                               | 常用     |
| `<leader>w`   | 保存文件                                                                    | 常用     |
| `<leader>W`   | 以管理员模式保存文件                                                        | 一般     |
| `<bs>`        | 映射 `<C-w>h`                                                               | 一般     |
| `<C-j>`       | 移动到下面的那个 `window`                                                   | 常用     |
| `<C-k>`       | 移动到上面的那个 `window`                                                   | 常用     |
| `<C-l>`       | 移动到右边的那个 `window`                                                   | 常用     |
| `<C-h>`       | 移动到左边的那个 `window`                                                   | 常用     |
| `<leader>hs`  | 高亮或者取消高亮匹配的搜索目标                                              | 常用     |
| `<leader>cw`  | 关闭当前 `window`                                                           | 常用     |
| `<leader>q`   | 删除当前 `window` 的 `buffer`                                               | 常用     |
| `<leader>ct`  | 关闭当前 `tab`                                                              | 一般     |
| `<leader>tn`  | 新建 `tab`                                                                  | 一般     |
| `[t`          | 移动到前一个 `tab`                                                          | 一般     |
| `]t`          | 移动到下一个 `tab`                                                          | 一般     |
| `[T`          | 移动到第一个 `tab`                                                          | 一般     |
| `]T`          | 移动到最后一个 `tab`                                                        | 一般     |
| `co`          | `copen`，打开当前错误窗口                                                   | 很少     |
| `<leader>tl`  | 在最后访问的那个 `tab` 和当前 `tab` 之前切换                                | 一般     |
| `<leader>cd`  | 切换当前 `pwd` 到当前 `buffer` 所在的 `location`                            | 一般     |
| `<leader>z`   | 打开一个临时 `buffer`，文件在 `~/buffer` 处                                 | 常用     |
| `<leader>x`   | 打开一个临时 `buffer.md`，文件在 `~/buffer.md` 处                           | 常用     |
| `<leader>m`   | `:CtrlPMRUFiles`，打开 MRU 文件                                             | 常用     |
| `<leader>d`   | `:NERDTreeToggle`，切换左侧目录窗口                                         | 常用     |
| `<leader>f`   | `:NERDTreeFind`，在左侧目录窗口中定位到当前 `buffer` 所对应的磁盘文件地址处 | 常用     |
| `[a`          | `:ALEPreviousWrap`，切换到前一个错误处，`ALE` 插件                          | 一般     |
| `]a`          | `:ALENextWrap`，切换到后一个错误处，`ALE` 插件                              | 一般     |
| `<leader>tw`  | 是否换行切换                                                                | 常用     |
| `\`           | `,`，`help ,`，自己看文档                                                   | 一般     |
| `<leader>a`   | 使用 `ag` 文字搜索 `pwd` 目录下的所有文件                                   | 常用     |
| `<leader>l`   | 对齐插件，输入想对齐的标识                                                  | 常用     |
| `<leader>gs`  | `:Gstatus`                                                                  | 常用     |
| `<leader>gc`  | `:Gcommit`                                                                  | 常用     |
| `<leader>gp`  | `:Gpush origin HEAD`                                                        | 常用     |
| `<leader>gr`  | `:Grebase`                                                                  | 一般     |
| `<leader>gl`  | `:Gpull`                                                                    | 常用     |
| `[q`          | `quickfix` 列表切换上一个                                                   | 一般     |
| `]q`          | `quickfix` 列表切换下一个                                                   | 一般     |
| `25s`         | 为当前窗口水平分配 40 columns 宽度                                          | 一般     |
| `50s`         | 为当前窗口水平分配适当的宽度                                                | 一般     |
| `75s`         | 为当前窗口水平分配 120 columns 宽度                                         | 一般     |
| `<leader>>`   | 放大当前窗口宽度                                                            | 一般     |
| `<leader><`   | 缩小当前窗口宽度                                                            | 一般     |
| `<leader>+`   | 增高当前窗口宽度                                                            | 一般     |
| `<leader>-`   | 降低当前窗口宽度                                                            | 一般     |
| `<leader>u`   | `:UndotreeToggle` 打开 `Undo` 列表，`undotree` 插件提供                     | 常用     |
| `Wdt`         | 对当前界面下所有展示的 `window` 执行 `diffthis`                             | 常用     |
| `Wdo`         | 执行 `diffoff!`，配合 `Wdt`                                                 | 常用     |
| `<leader>scb` | 对当前界面下所有展示的 `window` 执行 `scrollbind!`，绑定操作                | 一般     |
| `<C-6>`       | `<C-^>`                                                                     | 常用     |
| `gp`          | 选择最后修改的文本，或者刚才被粘贴的文本                                    | 一般     |
| `:DiffSaved`  | 查看当前 `buffer` 和源文件的区别                                            | 一般     |
| `Qargs`       | 让 `quickfix` 面板的所有文件到 `args` 里                                    | 一般     |

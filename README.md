# shiinayane/homebrew-tap

```sh
brew tap shiinayane/tap
brew trust --cask shiinayane/tap/<cask>
brew install --cask shiinayane/tap/<cask>
```

Homebrew 默认不加载第三方 tap 里的 cask，`brew trust` 只信任这一个 cask。

| Cask | App |
| --- | --- |
| `bilikit` | [BiliKit](https://github.com/shiinayane/BiliKit-Mac) |
| `nitsync` | [NitSync](https://github.com/shiinayane/NitSync) |

BiliKit 自带 Sparkle 更新，`brew upgrade` 默认跳过它；需要由 Homebrew 升级时用 `brew upgrade --cask --greedy bilikit`。

NitSync 用过颜色校准的话，卸载前先在校准过的显示器连接着时运行 `open -a NitSync --args --reset-color`，把原来的描述文件换回去。

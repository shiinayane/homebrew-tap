# shiinayane/homebrew-tap

```sh
brew tap shiinayane/tap
brew trust --cask shiinayane/tap/bilikit
brew install --cask shiinayane/tap/bilikit
```

Homebrew 默认不加载第三方 tap 里的 cask，`brew trust` 只信任这一个 cask。

| Cask | App |
| --- | --- |
| `bilikit` | [BiliKit](https://github.com/shiinayane/BiliKit-Mac) |

BiliKit 自带 Sparkle 更新，`brew upgrade` 默认跳过它；需要由 Homebrew 升级时用 `brew upgrade --cask --greedy bilikit`。

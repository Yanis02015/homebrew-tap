# homebrew-tap

Casks perso pour les apps absentes de Homebrew, utilisées par le Brewfile de
[nixos-config](https://github.com/Yanis02015/nixos-config/blob/master/mac/Brewfile).

```sh
brew tap yanis02015/tap
brew install --cask yanis02015/tap/clipcascade
```

## Mettre à jour un cask

Changer `version`, puis recalculer le hash du nouveau zip :

```sh
curl -sL <url> | shasum -a 256
```

| Cask | App |
|------|-----|
| `clipcascade` | [ClipCascade](https://github.com/Sathvik-Rao/ClipCascade), client macOS (Apple Silicon) |

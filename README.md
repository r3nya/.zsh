# Zsh Configuration

Modular Zsh configuration with enhanced features and workflow improvements.

## Dependencies

- Homebrew
- `fzf` - fuzzy finder
- `zsh-history-substring-search` (via Homebrew)
- `zsh-autosuggestions` (via Homebrew)
- `zsh-syntax-highlighting` (via Homebrew)

## Installation

```sh
brew install fzf zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting
```

Link `~/.zshrc`:
```sh
ln -s ~/.zsh/zshrc ~/.zshrc
```

## Features

- Modular configuration structure
- Git-aware prompt with dirty state indicator
- 50k command history with intelligent deduplication
- History substring search
- Fuzzy command history search
- Command autosuggestions
- Syntax highlighting
- Java version switchers (8, latest)
- PATH management (Homebrew, OrbStack, Android SDK)

## Keybindings

| Key | Action |
|-----|--------|
| `↑` / `↓` | History substring search |
| `Ctrl+R` | Fuzzy history search (fzf) |
| `→` | Accept full autosuggestion |
| `Option+→` | Accept word from autosuggestion |

## Aliases

- `java8`, `javalatest` - Switch Java versions
- `_brew_up` - Update, upgrade, and cleanup Homebrew

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

### Core (zprezto-inspired)
- Modular configuration structure
- Smart completion caching (20-hour regeneration for faster startup)
- Case-insensitive and fuzzy completion matching (tolerates typos)
- Substring completion (`dev` → `Development`)
- Colored completion menus with grouped descriptions
- Approximate matching (fixes 1-character typos automatically)
- 50k command history with timestamps and intelligent deduplication
- Interactive comments support (use `#` in command line)

### Plugins
- Git-aware prompt with dirty state indicator
- History substring search (arrow keys)
- Fuzzy command history search (fzf)
- Command autosuggestions
- Syntax highlighting

### Tools
- Java version switchers (8, latest)
- PATH management (Homebrew, OrbStack, Android SDK)

## Keybindings

| Key | Action |
|-----|--------|
| `↑` / `↓` | History substring search |
| `Ctrl+R` | Fuzzy history search (fzf) |
| `Ctrl+S` | Toggle `sudo` prefix on current command |
| `Ctrl+Q` | Push line to buffer (save command, run another, restore) |
| `→` | Accept full autosuggestion |
| `Option+→` | Accept word from autosuggestion |

## Aliases

- `java8`, `javalatest` - Switch Java versions
- `_brew_up` - Update, upgrade, and cleanup Homebrew

### Git Worktree (`gwh` for help)

| Command | Description |
|---------|-------------|
| `gwa` | Add worktree (interactive) |
| `gwl` | List worktrees |
| `gwr` | Remove worktree (interactive) |
| `gwp` | Prune stale worktree info |
| `gwcd` | cd to worktree (fzf) |

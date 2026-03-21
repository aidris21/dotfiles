# dotfiles

Personal dev environment configs — Neovim, tmux, Zsh, WezTerm, and more on macOS.

## What's Included

### Shell (Zsh)

- **[Powerlevel10k](https://github.com/romkatv/powerlevel10k)** — fast, customizable prompt theme
- **[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)** — fish-like inline command suggestions
- **[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)** — real-time command highlighting
- **[zoxide](https://github.com/ajeetdsouza/zoxide)** — smarter `cd` that learns your most-used directories
- **[eza](https://github.com/eza-community/eza)** — modern `ls` replacement with icons

### Terminal (WezTerm)

- Custom **"coolnight"** color scheme (dark background, green cursor)
- **MesloLGS Nerd Font Mono** at size 16
- Window background blur + 80% opacity
- Auto-maximize on startup

### Neovim

Plugin manager: [lazy.nvim](https://github.com/folke/lazy.nvim)

#### LSP & Completion
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** — LSP configuration for 18 language servers (TypeScript, Python, Rust, Lua, HTML/CSS, Tailwind, GraphQL, Svelte, Prisma, and more)
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** — portable LSP/formatter/linter installer
- **[blink.cmp](https://github.com/Saghen/blink.cmp)** — fast completion engine with Rust-based fuzzy matching

#### Navigation
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** — fuzzy finder for files, grep, references
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)** — file explorer sidebar
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** — keymap discovery popup
- **[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)** — seamless `Ctrl+hjkl` navigation between Neovim splits and tmux panes

#### Git
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** — inline git diff signs, hunk staging, blame
- **[lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)** — full lazygit UI inside Neovim (`<leader>lg`)

#### UI
- **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)** — colorscheme
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** — statusline
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** — tab bar
- **[alpha-nvim](https://github.com/goolord/alpha-nvim)** — start screen dashboard
- **[dressing.nvim](https://github.com/stevearc/dressing.nvim)** — improved input/select UI

#### Editing
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** — syntax highlighting and indentation (16+ languages)
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)** — auto-close brackets and quotes
- **[conform.nvim](https://github.com/stevearc/conform.nvim)** — format-on-save (prettier, black, isort, stylua, eslint_d)
- **[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)** — visual indent guides
- **[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)** — auto-close and rename HTML/JSX tags

#### Session
- **[auto-session](https://github.com/rmagatti/auto-session)** — auto-save and restore editor sessions

### Tmux

- **[tpm](https://github.com/tmux-plugins/tpm)** — plugin manager
- **[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)** — `Ctrl+hjkl` pane navigation shared with Neovim
- **[tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)** — persist sessions across restarts
- **[tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)** — auto-save + auto-restore sessions
- **[tmux-themepack](https://github.com/jimeh/tmux-themepack)** — powerline/default/cyan theme
- Vi copy-mode keybindings, mouse support, 256-color terminal

### Other Configs

- **[Zed](https://zed.dev)** — vim mode enabled, Ayu Dark/Light theme (system-aware), Cursor base keymap
- **[GitHub CLI](https://cli.github.com)** — HTTPS protocol, `gh co` alias for `pr checkout`
- **Git** — global gitignore
- **Rust** — Cargo environment via `.zshenv` / `.profile`

## Setup

```bash
# Clone
git clone https://github.com/<your-username>/dotfiles.git ~/dotfiles

# Install Homebrew packages
brew bundle --file=~/dotfiles/Brewfile

# Symlink everything with GNU Stow
cd ~/dotfiles
stow .

# Tmux plugins
# Open tmux, then press: prefix + I

# Neovim plugins
# Open Neovim — lazy.nvim auto-installs on first launch
# Or run :Lazy to manage plugins manually
```

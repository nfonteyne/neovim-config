# neovim-config
## Overview
This repository contains my modular Neovim configuration optimized for Python development, using Neovim v0.11.1. The setup emphasizes productivity, aesthetics, and a smooth workflow for Python developers.
## Features

🏠 **Home Screen**

- Alpha.nvim - A customizable greeter providing quick access to recent files, bookmarks, and common actions

🔍 **Fuzzy Finding**
- FZF-Lua - Lightning-fast fuzzy finder with rich features for files, buffers, and more
- Harpoon - Quick file navigation between frequently used files

📁 **File Management**
- Mini.files - Minimalistic file browser focusing on simplicity and efficiency
- Snacks - Lightweight file explorer providing quick navigation through project files

🔄 **Git Integration**
- Gitsigns - Git decorations and hunks management directly in the buffer

⚡ **UI Enhancements**
- Noice.nvim - Replaces UI for messages, cmdline and popupmenu for a more refined experience
- Lualine - Statusline customization for better visual feedback
- Todo-comments - Highlight and search for TODO comments in your code

🔒 **Workflow Improvement**
- Hardtime.nvim - Helps break bad habits and master Vim motions
- Which-key - Displays available keybindings in a popup

📝 **Development Tools**
- LSP Configuration - Language Server Protocol setup for intelligent code completion
- Mason - Package manager for LSP servers, linters, and formatters
- Nvim-cmp - Completion engine for smart suggestions
- Treesitter - Advanced syntax highlighting and code understanding
- Auto-pairs - Automatically pair brackets, quotes, etc.
- Rest-nvim - HTTP client for API testing
- Obsidian - Integration with Obsidian for note-taking
- Auto-session - Automatically manage sessions

## Structure
```
├── init.lua               # Main configuration entry point
├── README.md              # Documentation
└── lua/
    └── jfork/            # Main configuration namespace
        ├── core/         # Core Neovim configurations
        │   ├── autocmds.lua   # Autocommands
        │   ├── init.lua       # Core module entry point
        │   ├── keymaps.lua    # Key mappings
        │   └── options.lua    # General Neovim settings
        ├── plugins/      # Plugin configurations
        │   ├── lsp/      # Language Server Protocol setup
        │   │   ├── lsp-config.lua  # LSP configuration
        │   │   └── mason.lua       # LSP package manager settings
        │   ├── alpha.lua      # Dashboard configuration
        │   ├── auto-pairs.lua # Auto-pairing configuration
        │   ├── auto-session.lua # Session management
        │   ├── colorscheme.lua # Theme settings
        │   ├── fzf-lua.lua    # Fuzzy finder settings
        │   ├── gitsigns.lua   # Git integration
        │   ├── hardtime.lua   # Vim motions training
        │   ├── harpoon.lua    # Quick file navigation
        │   ├── init.lua       # Plugins module entry point
        │   ├── lualine.lua    # Status line configuration
        │   ├── mini.lua       # Mini plugins suite
        │   ├── noice.lua      # UI enhancement settings
        │   ├── nvim-cmp.lua   # Completion engine config
        │   ├── obsidian.lua   # Obsidian integration
        │   ├── rest-nvim.lua  # HTTP client
        │   ├── snacks.lua     # File explorer config
        │   ├── todo-comments.lua # TODO highlighting
        │   ├── treesitter.lua    # Syntax highlighting
        │   └── which-key.lua     # Keybinding helper
        └── lazy.lua      # Lazy plugin manager configuration
```
## Requirements
- gcc (C compiler, needed to compile treeparser and Mason LSP server)
- npm (to install the LSP)
- ripgrep (for fzf-lua searching)
- fd (file finding)
- a nerd font of your choice

## Installation
Ensure you have Neovim installed
Clone this repository to the appropriate location:
```shell
git clone https://github.com/nfonteyne/neovim-config.git
```
Start Neovim and the Lazy plugin manager will automatically install all dependencies
...

# macOS Dotfiles

A small collection of fast, practical dotfiles for macOS.

This repository currently focuses on terminal setup, with special attention to a clean prompt and a polished `fastfetch` configuration. The first `fastfetch` layout in this repo was originally adapted from Omarchy, then modified to better fit this setup and personal preferences.

## Overview

These dotfiles are meant to be used on **macOS**. They are built around a workflow that values:

- Fast shell startup
- Clean terminal visuals
- Minimal but useful customization
- Easy versioning and portability

The goal is not to provide a huge all-in-one dotfiles framework, but a lightweight set of configs that are easy to understand, tweak, and reuse.

## Included

At the moment, this repo includes:

- `fastfetch/` — `fastfetch` configuration for a macOS-focused system summary
- `zsh/` — `.zshrc` (oh-my-zsh) and `.p10k.zsh` (Powerlevel10k two-line prompt)
- `ghostty/` — Ghostty config and Catppuccin themes

More configs may be added over time as the setup grows.

## fastfetch

The `fastfetch` config in this repository is designed for macOS and tuned for a clean, readable terminal presentation.

The initial version was **adapted from Omarchy**, then refined with custom changes to better match this environment, styling preferences, and day-to-day use. Credit goes to the original inspiration, while the current result reflects additional customization and cleanup.

## Requirements

These dotfiles are intended for:

- macOS
- A terminal environment such as Ghostty, iTerm2, or Terminal
- Nerd Font support recommended for the best visual output

If you want the `fastfetch` config to render correctly, make sure you have:

- `fastfetch` installed
- A compatible Nerd Font enabled in your terminal

## Installation

Clone the repository:

```bash
git clone git@github.com:YOUR_USERNAME/YOUR_REPO_NAME.git ~/dotfiles

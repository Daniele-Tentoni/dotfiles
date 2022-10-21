# Dotfiles

My dotfiles.

**Table of Contents**

- [Intro](#intro)
- [How to use](#how-to-use)
- [What it does](#what-it-does)
  - [Links](#links)
  - [Snap](#snap)
  - [VsCode](#vs-code)
- [Keep in mind](#keep-in-mind)

I've started following those articles:

1. https://about.gitlab.com/blog/2020/04/17/dotfiles-document-and-automate-your-macbook-setup/

I'm using [DotBot](https://github.com/anishathalye/dotbot) as dotfiles bootstrapper with some useful plugins.

## How to use

In a fresh installation, run `./install`.

Add the following plugin directories to execute snapd and apt installations: `--plugin-dir ./dotbot-snap` and `--plugin-dir ./dotbot-apt`. Remember that you need root privileges if you want to install packages with apt and snapd.

This is the definitive command I use:

```
$ sudo ./install --plugin-dir ./dotbot-apt/ --plugin-dir ./dotbot-snap/ --plugin-dir ./dotbot-vscode
```

## What it does

Descriptions of not-obsvious elements.

### Links

**Bash Custom**: Custom conf for my bash, used mostly on Linux environments.

**Zsh profile**: In `.zshrc` file I've saved all my configuration for a zsh shell, specially for a MacOs system. Set autocompletition, add some aliases and add some environment variables.

### Apt

Using the [apt plugin](https://github.com/bryant1410/dotbot-apt), dotbot will install defined apt packages.

**Audacity** for audio editing.

**Pyenv required**: some mandatory packages to build CPython from scratch with Pyenv (to manage environments).

**Pass** and **[pass-git-helper](https://github.com/languitar/pass-git-helper)**: as password manager and credential-store-helper for git.

**snapd** to install snap packages (see below)

### Shell

Run custom shell scripts, installing my customs, pyenv and poetry.

### Snap

Using the [snap plugin](https://github.com/DrDynamic/dotbot-snap), dotbot will install defined snap packages.

**DBeaver** (the _dbeaver-ce_ package)

**telegram-desktop** to use Telegram on desktop.

**whatsdesk** to use Whatsapp on desktop.

General purpouse database manager.

### VS Code

Using the [vscode plugin](https://github.com/hujianxin/dotbot-vscode), dotbot will install defined vscode extensions.

**rust-lang.rust-analyzer** help me write Rust programs.

## Keep in mind

1. Check the right identation for the install.config.yaml file.

2. Use `source ~/.zshrc` after modifing the _zshrc_ profile or _zshrc_aliases_ to load the changes in the current shell session.

My Python dev setup is inspired by [this article](https://mitelman.engineering/blog/python-best-practice/automating-python-best-practices-for-a-new-project/) in 2021, let me know if there's any new best practice to follow!

## Inspiration

Took inspiration from [anishathalye's dotfiles](https://github.com/anishathalye/dotfiles).

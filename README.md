# Dotfiles

My dotfiles.

**Table of Contents**

- [Intro](#intro)
- [How to use](#how-to-use)
- [What it does](#what-it-does)
  - [Links](#links)
  - [Snap](#snap)
- [Keep in mind](#keep-in-mind)

I've started following those articles:

1. https://about.gitlab.com/blog/2020/04/17/dotfiles-document-and-automate-your-macbook-setup/

I'm using [DotBot](https://github.com/anishathalye/dotbot) as dotfiles bootstrapper with some useful plugins.

## How to use

In a fresh installation, run `./install`.

## What it does

### Links

**Zsh profile**

In `.zshrc` file I've saved all my configuration for a zsh shell, specially for a MacOs system. Set autocompletition, add some aliases and add some environment variables.

### Snap

Using the [snap plugin](https://github.com/DrDynamic/dotbot-snap), dotbot will install defined snap packages.

**VScode** (the _code_ package)

General purpose IDE.

**DBeaver** (the _dbeaver-ce_ package)

General purpouse database manager.

**Node** (the _node_ package)

Javascript platform.

## Keep in mind

1. Check the right identation for the install.config.yaml file.

2. Use `source ~/.zshrc` after modifing the _zshrc_ profile or _zshrc_aliases_ to load the changes in the current shell session.

## Inspiration

Took inspiration from [anishathalye's dotfiles](https://github.com/anishathalye/dotfiles).

---
date: 2023-03-28
---

NOTE: Works only with Lazy plugin manager

# Intro

Exporting my own neovim config as community packs for anyone to use it to
enhance their experience in neovim.

## Installation

```lua
return {
  plugins = {
    "abhijeetsrivastava/neovim-plugin-packs",
    { import = "neovim-plugin-packs.editor.sessions" }
    -- more plugins as and when needed
  }
}
```

## Word of caution

They include some of my plugins which I use personally and not necessarily is
great for everyone.

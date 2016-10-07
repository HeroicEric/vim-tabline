# vim-tabline

Changes the way that tabs are labeled in Vim.

The default configuration displays up to 2 segments of the file path, starting
at the end.

For example, given the following file tree:

```
├── index.js
├── src
    ├── components
        ├── bar-baz
        │   └── component.js
        └── foo-bar
            ├── component.js
            └── template.hbs
```

Your tabs will be labeled as shown in this image:

![screenshot](https://raw.github.com/HeroicEric/vim-tabline/master/screenshots/screenshot.png)

## Installation

You can use [pathogen.vim](https://github.com/tpope/vim-pathogen), or any other
way that you like to install vim plugins.

```
$ git clone https://github.com/HeroicEric/vim-tabline.git ~/.vim/bundle/vim-tabline
```

Then reload vim.

### Todo

- [ ] Option for toggling tab numbers
- [ ] Different preset styles
- [ ] Option to configure modified character

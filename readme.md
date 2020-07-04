### Description

This is yet another plugin which provides [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim) integration for the [lightline](https://github.com/itchyny/lightline.vim). Unlike other plugins ([one](https://github.com/Palpatineli/lightline-lsc-nvim), [two](https://github.com/solderneer/lightline-languageclient), [three](https://github.com/takiyu/lightline-languageclient.vim)), new `LanguageClient#statusLineDiagnosticsCounts()` function from 0.1.157 version is used here, so no need to parse `getqflist()` or `LanguageClient#getState()`'s results.

### Table Of Contents

- [Installation](#installation)
- [Integration](#integration)
- [Configuration](#configuration)

### Installation

Install using a plugin manager of your choice, for example:

```viml
call dein#add('deponian/vim-lightline-lcn')
```

### Integration

1. Register components:

```viml
let g:lightline.component_expand = {
    \ 'error': 'lightline#lcn#error',
    \ 'warning': 'lightline#lcn#warning',
    \ 'info': 'lightline#lcn#info',
    \ 'hint': 'lightline#lcn#hint' }
```

2. Set color to components (use `warning` or `error`):

```viml
let g:lightline.component_type = {
    \ 'error': 'error',
    \ 'warning': 'warning',
    \ 'info': 'warning',
    \ 'hint': 'warning' }
```

3. Add components to the lightline, for example to the right side:

```viml
let g:lightline.active = { 'right': [[ 'hint', 'info', 'warning', 'error' ]] }
```

### Configuration

There are no configuration options.

Also thanks to [@maximbaz](https://github.com/maximbaz) and his [lightline-trailing-whitespace](https://github.com/maximbaz/lightline-trailing-whitespace) repository which I used as a reference.

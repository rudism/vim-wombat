## Wombat Vim Color Scheme

Parameterized version of the Wombat color scheme by Lars Nielsen with an original alternate light-background version.

Install `rudism/vim-wombat` using your favorite plugin manager. To use the original dark version:

```vim
set background=dark
colo wombat
```
![wombat-dark](https://user-images.githubusercontent.com/4787751/88708653-971d9380-d0d9-11ea-8439-820420a50b24.png)

To use the light version:

```vim
set background=light
colo wombat
```

![wombat-light](https://user-images.githubusercontent.com/4787751/88708664-9b49b100-d0d9-11ea-8536-a3d30e13350d.png)

If you use [vim-airline](https://github.com/vim-airline/vim-airline) and [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) then this plugin will use the `wombat` theme for dark mode and `silver` for light mode. To customize you can override some variables. For example:

```vim
let g:wombat_airline_theme_dark='wombat'
let g:wombat_airline_theme_light='solarized'
```

if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256

    colorscheme molokai
    set guitablabel=%M%t
    set lines=40
    set columns=115

    if has("gui_gnome")
        set term=gnome-256color
        colorscheme molokai
        set guifont=Monospace\ Bold\ 12
    endif

    if has("gui_mac") || has("gui_macvim")
        set guifont=Menlo:h12
        set transparency=7
    endif

    if has("gui_win32") || has("gui_win32s")
        set guifont=Consolas:h12
        set enc=utf-8
    endif
else
    "dont load csapprox if there is no gui support - silences an annoying warning
    let g:CSApprox_loaded = 1
    set t_Co=256 " 256 colors
    set background=dark

    "set railscasts colorscheme when running vim in gnome terminal
    if $COLORTERM == 'gnome-terminal'
        set term=gnome-256color
        colorscheme grb256
    else
        if $TERM == 'xterm'
            set term=xterm-256color
            colorscheme grb256
        else
            colorscheme grb256
        endif
    endif
endif

"highlight column 80
let &colorcolumn="90,".join(range(120,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27


###chrome
1. Address Bar
	- cmd + l//go to address bar
	- alt + enter //perform google search
	- ctrl + enter //add www & .com to domain and go
	- [search engine name], tab //switch search engine
	- alt + enter // search in new tab 
	- ctrl + enter // open in new tab


###vim
- {} "next empty line
- q[reg] "start recording to reg register, q to stop recording, @[reg] to execute
- g* - unbounded search  e.g go for got, go, gone
- "#" - backward search
- J //join next line to current line
- shift i //goto first letter
- shift s //delete line goto the start of the line(indented)
- shift C //delete from cursor to the end of line and begin insert
- shift W //goto next WORD "after space
- /\cforward "search forward ignorecase
- ~ "toggle case

###mergecode
- vimdiff
- .gitconfig
- [diff]
- external = git_diff_wrapper
- 
- git_diff_wrapper
- vimdiff "$1" "$2"
- 
- shortcurts
- ]c "next change
- [c "prev change
- do "get things back 
- dp "put things

###tags
- command! MakeTags !ctags -R .
- shortcuts
- ctrl + ]
- g, ctrl + ] "list all
- ctrl + t "back 1 level 
- ctrl + o "go to original place

###auto complete
- ^x^n just this file
- ^n anything
- ^n ^p to go forth & backward in the menu
- ^x^f for filenames
- ^x^] for tags only

###copy paste
- "a dd 
- + register connected to system clipboard

###template 
- nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

###help system
- help i_^n // insert mode ctrl+n
- helpgrep //grep in documentation cp cn

###tab
- cli
- tabnew 
- tabo "close all other tab
- tabm
- tabc "c stands for close
- tabnext
- 
- g~ + move "toggle & move
- 
- block insertion
- ctrl+b, [num] s


###script
- no <up> <Nop>
- labbr email kevinlu@163.com  "insert mode error correction or abbreviation
- let @a = @c

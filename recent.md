###tmux
1. shell
	- kill-session -t [session_name]
	- tmux ls
	- tmux list-sessions
	- tmux attach-session -t 0
2. tmux
	- tmux <Cr>
	- ctrl+b & //close current window
	- ctrl+b ? //help
	- ctrl+b c //create a second window
	- ctrl+b n // next window
	- ctrl+b p // prev window
	- ctrl+b [num] // [num]th window
	- ctrl+b d //detach
	- ctrl+b , //rename window
	- ctrl+w  //list window
  - ctrl+%  //horizontally split-window, add a new pane
	- ctrl+" //split-window vertically, add a new pane
	- ctrl+ [arrow] //move between pane
	- ctrl+x //remove pane
	- ctrl+: //enter comman mode
	- ctrl+b, option + [arrow] //adjust window size
	- ctrl+b, z //toggle full screen
3. session
	- tmux new -s [session_name]


###chrome
1. Address Bar
	- cmd + l//go to address bar
	- alt + enter //perform google search
	- ctrl + enter //add www & .com to domain and go
	- [search engine name], tab //switch search engine
	- alt + enter // search in new tab 
	- ctrl + enter // open in new tab


###vim
- di" "delete between double quotes
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




export PS1='>'
alias text='adb shell input text'
alias enter='adb shell input keyevent 66'

alias login='text 78945661233 && enter && text QAZwsx@1 && enter && enter'
alias login_a='text 18094223992 && enter && text ford@1 && enter && enter'
alias login_b='text 17602100014 && enter && text ford@1 && enter && enter'
alias lw_login1='text 13818825311 && enter && text Ford@2'
alias lw_login2='text 13916718531 && enter && text a12345!'
alias ls='echo "==============================================";pwd;
echo "==============================================";ls -G'



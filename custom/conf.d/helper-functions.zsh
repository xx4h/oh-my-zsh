# define helper functions

# usage: remindin <time> <text>
# e.g.: remindin 10m "aaaaah. du wolltest peter zurückrufen"
function remindin()
{
    sleep $1 && notify-send "Reminder..." "$(echo $* | cut -f2- -d' ')" &!
}

# show me commands used
function hist()
{
    eval history | awk '{print $2}'|awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c|sort -rn|head -$1
}

# color git branch
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function set_prompt {
    PS1="%{$fg_bold[red]%}%n%{$reset_color%}%{$fg_bold[cyan]%} @ %{$reset_color%}%{$fg_bold[red]%}%m%{$reset_color%} %{$fg_bold[cyan]%}%~%{$reset_color%} %{$fg[green]%}$(parse_git_branch)%{$reset_color%} %{$fg_bold[red]%}%#%{$reset_color%} "

}

function findTodoLatex {
  perl -lne 'if (m((^| *)\\((sub|)section|paragraph){(.*)})) { $last_section=$4 ; } if (m((^| *)\%TODO)) { print "Section: " . $last_section . " has TODO!!!" } ' < $1
}

function uniqFrom2 {
  join -v1 -v2 <(sort $1) <(sort $2) > $3
}

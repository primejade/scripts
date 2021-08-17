#  _  _ ___    
# | || | __|   H
# | __ | _|    A
# |_||_|___|   P
#              
# ascii art made by figlet 

#!/bin/sh
set -e

## global comment section {{{
#man -k . | dmenu -l 30 | awk '{print $1}' | xargs -r man -Tpdf | zathura -
#man -k . | dmenu -l 30 | awk '{print $1}' | xargs -r man -Tpdf > man_pacman.pdf

## }}}

NAme="$2"
OPtion="$1"

echo $NAme

# help function {{{
help ()
{
echo " 
build a PDF document from a man page

Useage:

./man2pdf.sh [OPTION..] [NAME]

save, s, -s     save PDF document on the Desktop

print, p, -p    just show the document in zathura, do not save it as PDF

help, h, -h     show this message

written by HE
github.com/primejade
"
}
# }}}

# case statement {{{
case $1 in
    -[pP]|[pP]|[pP][rR][iI][nN][tT])
        man -Tpdf $NAme | zathura -
    ;;
    -[sS]|[sS]|[sS][aA][vV][eE])
        man -Tpdf $NAme > ~/Desktop/$NAme.pdf
    ;;
    -[hH]|[hH]|[hH][eE][lL][pP])
        help
    ;;
    *)
        help  
    ;;
esac
# }}}

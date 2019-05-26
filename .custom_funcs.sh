#####################################
# Begin custom functions
#####################################

add_to_path()
{
    path_list=`echo $PATH | tr ':' ' '`
    new_dir=$1
    for d in $path_list
    do
        if [ $d == $new_dir ]
        then
            return 0
        fi
    done
    if [ -n $2 ] && [ $2 == "end" ]
    then
        export PATH=$PATH:$new_dir
    else
        export PATH=$new_dir:$PATH
    fi
}

install_from_file()
{
    xargs -a <(awk '! /^ *(#|$)/' "$1") -r -- sudo apt-get install -y
    # xargs -a <(awk '! /^ *(#|$)/' "$packagelist") -r -- sudo apt-get install -y
}


dir_size()
{
    du -h --max-depth=1 "$1" 2>/dev/null | sort -hr
}

mygrep () {
    if [ "$#" -ne 2 ]; then
        echo "USAGE : mygrep srchstr filespec"
        echo "Hint: Wildcards must be quoted"
    else
        find . -name "$2"  2>/dev/null -exec grep "$1" {} +
    fi
}

ffind() {
    if [ "$#" -ne 1 ]; then
        echo "USAGE : ffind filename"
    else
        find . -name "$1*" 2>/dev/null
    fi
}

fext() {
    if [ "$#" -ne 1 ]; then
        echo "USAGE : fext extension"
    else
        find . -type f -maxdepth 1 -name "*.$1" 2>/dev/null
    fi
}

# Show top 10 largest files in current directory and below
bigf() {
    find -xdev -type f -size +100M -exec du -Sh {} + 2>/dev/null | sort -rh | head -10
}

# Show top 10 largest directories in current directory and below
bigd() {
    \du -hsx * 2>/dev/null | sort -rh | head -10
}

fext2() {
    if [ "$#" -ne 1 ]; then
        echo "USAGE : fext2 extension"
    else
        find . -type f -name "*.$1" 2>/dev/null
    fi
}

show_funcs() {
    cat ~/dotfiles/.custom_funcs.sh | less
}

reload() {
    if [ -n "$ZSH_VERSION" ]; then
        if [ -f ~/.zshrc ]; then
            source ~/.zshrc
        fi
    elif [ -n "$BASH_VERSION" ]; then
        if [ -f ~/.bashrc ]; then
            source ~/.bashrc
        fi
   # asume something else
    # else
    fi
}

mcd () {
    case $# in
    1)
        [ -d $1 ] || mkdir -p $1
        cd $1 && pwd
        ;;
    *)
        echo "USAGE : mcd rep"
        ;;
    esac
}

finda() {
    alias | grep "$1"
}
#####################################
# End custom functions
#####################################

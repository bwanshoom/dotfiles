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
    find . -name "$2"  2>/dev/null -exec grep "$1" {} +
}

ffind() {
    find . -name "$1*" 2>/dev/null
}

fext() {
    find . -type f -name "*.$1" 2>/dev/null
}

#####################################
# End custom functions
#####################################

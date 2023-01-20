# ~/.bash-aliases -- Yoda's Bash-Shell Custom Aliases
# (Some of these assume that we've already installed "exa" and "nala.")
# -------------------
# Format for aliases (note single quotes!:
# 	alias alias-name='command_to_perform'
# -------------------
# To use this file, the following statement must exist in ~/.bashrc:

	# if [-e $HOME/.bash_aliases]; then
	#   source $HOME/.bash_aliases
	# fi

# Vertical ist of directories, files, and hidden files in color, directories first.
# Uncomment if this line does not already exist in ~/.bashrc
	# alias ls='exa -la --color=always --group-directories-first'

# Nala update and upgrade
	alias update='sudo nala update && sudo nala upgrade'
	alias updatey='sudo nala update && sudo nala upgrade -y'

# Nala install/uninstall applications
	alias shitcan='sudo nala purge && sudo nala autoremove'
	alias nalin='sudo nala install'

# Prevent file manipulation blunders with interactive confirmations.
	alias mv='mv -i'
	alias cp='cp -i'
	alias ln='ln -i'
	alias rm='rm -I --preserve-root'

# Start Emacs Client from the terminal
	alias emacs="emacsclient -c -a 'emacs'"

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# More git aliases, using the bare master repository alias "config" for "git."
        alias addup='config add -u' # <filename1 filename2> <*.txt>
        # alias addall='config add .' # Adds entire directory. Not for bare repo!!
        alias branch='config branch'
        alias checkout='config checkout'
        alias clone='config clone'
        alias diff='config diff' # Shows unstaged changes.
        alias diffs='config diff --staged' # Shows staged changes.
        alias commit='config commit -m'
        alias fetch='config fetch'
        alias pull='config pull origin'
        alias push='config push origin'
        alias gitstat='config status'  # 'status' is protected name so using 'stat' instead
        alias tag='config tag'
        alias newtag='config tag -a'
        
# Got more? Add them below.

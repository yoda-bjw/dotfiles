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

# Nala purge applications
	alias shitcan='sudo nala purge'

# Prevent file manipulation blunders with interactive confirmations.
	alias mv='mv -i'
	alias cp='cp -i'
	alias ln='ln -i'
	alias rm='rm -I --preserve-root'

# Got more? Add them below.

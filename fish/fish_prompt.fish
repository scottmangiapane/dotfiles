function fish_prompt
	# User
	set_color --bold green
	echo -n (whoami)
	set_color normal

	echo -n ' '

	# PWD
	set_color --bold blue
	echo -n (prompt_pwd)
	set_color normal

	echo -n ' '

	# Git
	set_color --bold red
	set -l GIT_BRANCH (git branch ^/dev/null | grep \* | sed 's/* //')
	if test -n "$GIT_BRANCH"
		echo -n $GIT_BRANCH
		echo -n ' '
	end
	set_color normal

	# Virtual_env
	if set -q VIRTUAL_ENV
		echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "

		echo -n ' '
	end
end

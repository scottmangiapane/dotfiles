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
end

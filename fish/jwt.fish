function jwt
	if test (count $argv) != 1
		echo "usage: jwt token"
		return 1
	end
	if ! type -q jq
		echo "error: 'jq' is required"
		return 1
	end
	echo $argv[1] | jq -R 'split(".") | .[0],.[1] | @base64d | fromjson'
	echo "Signature: "(echo $argv[1] | awk -F '.' '{print $3}')
end

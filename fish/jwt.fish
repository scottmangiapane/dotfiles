function jwt
    if test (count $argv) -ne 1
        echo "usage: jwt <token>"
        return 1
    end

    if not type -q jq
        echo "error: 'jq' is required"
        return 1
    end

    set parts (string split '.' $argv[1])

    if test (count $parts) -ne 3
        echo "error: Invalid JWT format"
        return 1
    end

    echo "Header:"
    echo $parts[1] | jq -R 'gsub("-";"+") | gsub("_";"/") | @base64d | fromjson'
    echo "Payload:"
    echo $parts[2] | jq -R 'gsub("-";"+") | gsub("_";"/") | @base64d | fromjson'
end


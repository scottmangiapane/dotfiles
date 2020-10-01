function genrand
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c $argv ; echo ""
end

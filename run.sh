REPOS=$(find /repos -name '*.git' -type d -prune | grep -v '/plugins/' | tr '\n' ' ')

echo "Found repositories: $REPOS"

caddy start

klaus --host 127.0.0.1 --port 8081 --smarthttp $REPOS

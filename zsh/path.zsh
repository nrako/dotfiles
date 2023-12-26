# TODO? use path_helper???
# eval `/usr/libexec/path_helper -s`

# less important first
paths=(
  # Node Packace Manager
  ./node_modules/.bin
  # system stuffs, see path_helper
  /usr/bin
  /sbin
  /bin
  /usr/sbin
  # Postgres.app (should be taken care of by `asdf` `postgres-app` plugin
  # /Applications/Postgres.app/Contents/Versions/14/bin
  # /Applications/Postgres.app/Contents/Versions/latest/bin
  # personal scripts
  "$HOME/.bin"
  # Homebrew
  /opt/homebrew/bin
)
# reset PATH, is it wise? should I make use of path_helper?
# PATH=''
for i in $paths; do
  export PATH="$i:$PATH"
done

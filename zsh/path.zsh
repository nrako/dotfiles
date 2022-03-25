# TODO? use path_helper???
# eval `/usr/libexec/path_helper -s`

# less important first
paths=(
  # Node Packace Manager
  ./node_modules/.bin
  # Android SDK
  "$HOME/Library/Android/sdk/tools"
  "$HOME/Library/Android/sdk/platform-tools"
  # Bundler binstubs
  ./bin
  # fzf
  /usr/local/opt/fzf/bin
  # system stuffs, see path_helper
  /usr/bin
  /sbin
  /bin
  /usr/sbin
  /opt/X11/bin
  # Postgres.app
  /Applications/Postgres.app/Contents/Versions/12/bin
  # /Applications/Postgres.app/Contents/Versions/latest/bin
  # personal scripts
  "$HOME/.bin"
  # Homebrew
  /usr/local/bin
  /usr/local/sbin
  # Python pip3
  "$HOME/Library/Python/3.9/bin"
  # Nave
  "$NAVEPATH"
  # LittleSnitch capture traffic
  "/Applications/Little Snitch.app/Contents/Components"
)
# reset PATH, is it wise? should I make use of path_helper?
PATH=''
for i in $paths; do
  export PATH="$i:$PATH"
done

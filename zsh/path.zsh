paths=(
  # Homebrew
  '/usr/local/bin'
  '/usr/local/sbin'
  # personal scripts
  "$HOME/.bin"
  # Node Packace Manager
  './node_modules/.bin'
  # Android SDK
  "$HOME/Library/Android/sdk/tools"
  "$HOME/Library/Android/sdk/platform-tools"
  # Bundler binstubs
  './bin'
  # X11 bin (not sure it's still required)
  /opt/X11/bin
)

for i in $paths; do
  export PATH="$i:$PATH"
done

# /usr/bin
# /bin
# /usr/sbin
# /sbin

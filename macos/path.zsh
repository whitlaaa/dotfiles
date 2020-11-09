# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Local bin directories before anything else
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Load custom commands
export PATH="$DOTFILES/bin:$PATH"

# Golang
export GOPATH="$HOME/dev/workspace/go"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-12.jdk/Contents/Home"
export PATH="$PATH:$GOPATH/bin"

#!/bin/bash
set -e

echo "=== SWINEcorner Dev Setup ==="

# Install nvm if not present
if [ ! -d "$HOME/.nvm" ]; then
  echo "Installing nvm..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
fi

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Install and use Node.js 18 (LTS, matches @types/node in package.json)
echo "Installing Node.js 18..."
nvm install 18
nvm use 18

echo "Node: $(node --version)"
echo "npm:  $(npm --version)"

# Install dependencies
echo "Installing dependencies..."
npm install

# Start dev server
echo ""
echo "=== Setup complete! ==="
echo "Starting dev server at http://localhost:3000"
echo ""
npm run dev

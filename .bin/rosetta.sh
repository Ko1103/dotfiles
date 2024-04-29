# Check if running on Apple Silicon
if [[ $(uname -p) == "arm" ]]; then
  # Install Rosetta 2
  softwareupdate --install-rosetta --agree-to-license
fi

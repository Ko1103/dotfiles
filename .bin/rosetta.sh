# Check if running on Apple Silicon
if [[ $(uname -p) == "arm" ]]; then
  softwareupdate --install-rosetta --agree-to-license
fi

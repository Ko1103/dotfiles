# See: https://github.com/Ko1103/nvim/blob/main/README.md

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone git@github.com:Ko1103/nvim.git ./config/nvim --depth 1 && nvim
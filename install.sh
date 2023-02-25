cp ./nvim/init.vim ~/.config/nvim/init.vim
cp ./nvim/plug-config/airline.vim ~/.config/nvim/plug-config/airline.vim
cp ./nvim/plug-config/coc.vim ~/.config/nvim/plug-config/coc.vim
cp ./alacritty.yml ~/.config/alacritty/alacritty.yml

cargo install bat exa xplr gitui zellij zoxide --locked

zoxide init --cmd

cp ./zellij ~/.config/zellij/

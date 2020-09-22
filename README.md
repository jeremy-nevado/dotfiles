Make sure that path to fish is correct in tmux.conf
Make sure that bindings are correct in fish.config
Make sure that the anaconda path is correct

# Initializing caps lock binds #
# xmodmap ~/.Xmodmap #
# xcape -e 'Control_L=Escape' #

set -U fish_user_paths **anacondapath** $fish_user_paths

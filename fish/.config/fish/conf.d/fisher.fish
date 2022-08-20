# Fisher is a fish plugin manager
# Set fisher data to a folder outside of fish config so that it won't pollute the fish folder with plugins' functions, completions
set -U fisher_path ~/.config/fisher

# Load the fisher function
source ~/.config/fisher/functions/fisher.fish

# Load all the fisher plugin's function
set -gx fish_function_path $fisher_path/functions $fish_function_path

# Load all the fisher plugin's completion
set -gx fish_complete_path $fisher_path/completions $fish_complete_path
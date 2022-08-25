# Fisher is a fish plugin manager
if status is-interactive
    # Only setup fisher plugin manager if its config folder exists
    if test -d ~/.config/fisher
      # Set fisher data to a folder outside of fish config so that it won't pollute the fish folder with plugins' functions, completions
      set -g fisher_path ~/.config/fisher

      # Load the fisher function
      source $fisher_path/functions/fisher.fish

      # Load all the fisher plugin's function
      set -gx fish_function_path $fisher_path/functions $fish_function_path

      # Load all the fisher plugin's completion
      set -gx fish_complete_path $fisher_path/completions $fish_complete_path

      for plugin_conf in $fisher_path/conf.d/*.fish
          source $plugin_conf
      end
      
      for plugin_func in $fisher_path/functions/*.fish
          source $plugin_func
      end
      
      for plugin_completions in $fisher_path/completions/*.fish
          source $plugin_completions
      end
    end
end

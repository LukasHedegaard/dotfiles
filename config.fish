
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/au478108/opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
alias fu=fuck

thefuck --alias | source

function proj
  cd ~/Projects/$argv && conda activate $argv
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/au478108/opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
alias fu=fuck

thefuck --alias | source

function pcd
  cd ~/Projects/$argv && conda activate $argv
end

function plab
  cd ~/Projects/$argv && conda activate $argv && jupyter lab
end

function pcode
  cd ~/Projects/$argv && conda activate $argv && code .
end

function gpubookings
  cd ~/Projects/gputils
  conda activate gputils
  python gputils/sheets.py --open_gpu_sheets
end

function gpusage
  ssh -t -o StrictHostKeyChecking=no $argv "nvidia-smi"
end

function gpubook
  cd ~/Projects/gputils
  conda activate gputils
  python gputils/sheets.py --book_gpus $argv
end

function gpunbook
  cd ~/Projects/gputils
  conda activate gputils
  python gputils/sheets.py --unbook_gpus $argv
end

function screens
  cd ~/Projects/gputils
  conda activate gputils
  python gputils/screens.py --servername $argv
  hyperlayout
end

if status is-interactive
    zoxide init fish | source
    starship init fish | source
    enable_transience
    alias vi="nvim"
    alias svi="sudo -E nvim"
    alias f="eza -aG --color=always --color-scale all --color-scale-mode fixed --icons=always -l --git"
    alias cd="z"
    alias gitall="git ls-files -z -o --exclude-standard | xargs -0 git add && git add ."
end

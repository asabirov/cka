source <(kubectl completion bash)
complete -F __start_kubectl k

alias k='kubectl'
alias kgd='k get deploy'
alias kgp='k get pods'
alias kgn='k get nodes'
alias kgs='k get svc'
alias kge="k get events — sort-by='.metadata.creationTimestamp' |tail -"

function vaml()
{
vim -R -c 'set syntax=yaml' -;
}

source <(kubectl completion bash)
complete -F __start_kubectl k

alias k='kubectl'
alias kn='kubectl config set-context --current --namespace'
alias kx='kubectl config use-context'

alias kgxs='kubectl config get-contexts'
alias kgcx='kubectl config current-context'
alias kgd='k get deploy -o wide'
alias kgp='k get pods -o wide'
alias kgn='k get nodes --show-labels'
alias kgs='k get svc -o wide'
alias kge="k get events — sort-by='.metadata.creationTimestamp' |tail -"

alias kep="kubectl describe pod"
alias ked="kubectl describe deployment"
alias kes="kubectl describe service"

function vaml()
{
  vim -R -c 'set syntax=yaml' -;
}

export nks="-n kube-system"
export ETCDCTL_API=3
export k8s="https://k8s.io/examples"

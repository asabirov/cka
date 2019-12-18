source <(kubectl completion bash)
complete -F __start_kubectl k

alias k='kubectl'
alias kn='kubectl config set-context --current --namespace'
alias kx='kubectl config use-context'
alias kgc='kubectl config get-contexts'
alias kgd='k get deploy'
alias kgp='k get pods'
alias kgn='k get nodes'
alias kgs='k get svc'
alias kge="k get events — sort-by='.metadata.creationTimestamp' |tail -"
alias kctx='kubectl config current-context'
alias h="helm"
alias taints='kubectl get nodes -o=custom-columns="NAME:.metadata.name,STATUS:.status.conditions[].message,TAINTS:spec.taints[].key"'

function vaml()
{
  vim -R -c 'set syntax=yaml' -;
}

export nks="-n kube-system"
export ETCDCTL_API=3
export k8s="https://k8s.io/examples"

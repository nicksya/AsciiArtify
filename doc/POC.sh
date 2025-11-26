k3d cluster create argo
kubectl cluster-info

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
k get all -n argocd
k get po -n argocd
k port-forward svc/argocd-server -n argocd 8080:443&

k get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d; echo



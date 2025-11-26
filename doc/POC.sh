wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
k3d version

asciinema rec

k3d cluster create argo
kubectl cluster-info

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
k get all -n argocd
k get po -n argocd
k port-forward svc/argocd-server -n argocd 8080:443&

k get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d; echo



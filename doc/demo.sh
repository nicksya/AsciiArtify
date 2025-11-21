sudo apt-get install asciinema
asciinema rec

k3d version
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

asciinema rec
k3d version
k3d cluster create demo

# kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl cluster-info

kubectl create deployment demo --image=mykytakhomenko/hello-app:1.0
kubectl expose deployment demo --type=LoadBalancer --port=8080
kubectl get svc
kubectl get ep
kubectl port-forward deploy/demo 8080:8080

curl localhost:8080


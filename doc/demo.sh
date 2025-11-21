k3d cluster create demo

kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl cluster-info

kubectl create deployment demo --image=gcr.io/google-samples/hello.app:1.0
kubectl run demo --image=gcr.io/google-samples/hello.app:1.0
kubectl expose deployment demo --type=LoadBalancer --port=8080
kubectl get svc
kubectl port-forward demo 8080:8080 &


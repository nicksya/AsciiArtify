k get all -n demo

kubectl port-forward -n demo svc/ambassador 8088:80
curl localhost:8088
curl -F 'image=@./logo.png' localhost:8088/img/
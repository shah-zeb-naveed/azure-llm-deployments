kubectl delete deployment my-ingress-nginx-controller
kubectl delete ingress my-service
kubectl delete svc my-ingress-nginx-controller 
helm uninstall my-ingress-nginx
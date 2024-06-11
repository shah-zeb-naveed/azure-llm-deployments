helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm install my-ingress-nginx ingress-nginx/ingress-nginx
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=my-service"
kubectl create secret tls my-tls-secret --cert=tls.crt --key=tls.key
sleep 30
kubectl apply -f ingress.yaml

#  no endpoints available for service "my-ingress-nginx-controller-admission" seems like a transient issue
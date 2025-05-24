
kubectl apply -f ./configmap.yaml
kubectl apply -f ./secret.yaml

kubectl apply -f ./booking-service/tt-booking-service-deployment.yaml
kubectl apply -f ./booking-service/tt-booking-service-service.yaml

kubectl apply -f ./content-service/tt-content-service-deployment.yaml
kubectl apply -f ./content-service/tt-content-service-service.yaml

kubectl apply -f ./core-service/tt-core-service-deployment.yaml
kubectl apply -f ./core-service/tt-core-service-service.yaml

kubectl apply -f ./payment-service/tt-payment-service-deployment.yaml
kubectl apply -f ./payment-service/tt-payment-service-service.yaml

kubectl apply -f ./resources-service/tt-resources-service-pvc.yaml
kubectl apply -f ./resources-service/tt-resources-service-deployment.yaml
kubectl apply -f ./resources-service/tt-resources-service-service.yaml

kubectl apply -f ./booking-service/tt-booking-service-hpa.yaml
kubectl apply -f ./content-service/tt-content-service-hpa.yaml
kubectl apply -f ./core-service/tt-core-service-hpa.yaml
kubectl apply -f ./payment-service/tt-payment-service-hpa.yaml
kubectl apply -f ./resources-service/tt-resources-service-hpa.yaml

kubectl apply -f ./ingress.yaml

# kubectl rollout restart deployment tt-core-service
# kubectl rollout restart deployment tt-booking-service
# kubectl rollout restart deployment tt-payment-service
# kubectl rollout restart deployment tt-content-service
# kubectl rollout restart deployment tt-resources-service
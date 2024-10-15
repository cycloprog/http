# Instructions
https://docs.docker.com/get-started/workshop/02_our_app/
https://gobyexample.com/http-server

docker build -t my-go-app .
docker run -d -p 8080:8080 my-go-app
docker stop $Container_Id

# Cleanup
https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes

# minikube
https://medium.com/@mohaazeem7/running-a-simple-go-service-on-minikube-6eda4679ea08 
https://minikube.sigs.k8s.io/docs/
https://minikube.sigs.k8s.io/docs/handbook/pushing/#1-pushing-directly-to-the-in-cluster-docker-daemon-docker-env 

eval $(minikube docker-env)
docker build -t http .
minikube kubectl -- apply -f deployment.yaml
minikube kubectl -- apply -f service.yaml
minikube kubectl -- get deployments
minikube kubectl -- get pods
minikube service http --url

## Stop
https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
minikube kubectl -- get namespace
minikube kubectl -- --namespace default scale deployment http --replicas 0
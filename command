kubectl cluster-info
kubectl get nodes
kubectl get nodes -owide
========================
kubectl get nodes
kubectl run nginx --image=nginx
kubectl get pods -owide
kubectl describe pod name
kubectl delete pod name
kubectl delete pods --all
=========================
kubectl create -f pod.yaml
kubectl edit pod redis
=========================
kubectl get replicationcontroller
kubectl get replicaset
kubectl replace -f ... обновить набор реплик
kubectl scale --replicas=5 -f ... обновить набор реплик
==========================
kubectl create -f deploy.yaml
kubectl delete -f deploy.yaml
kubectl port-forward deploy/myapp-deployment  8000:80
kubectl get all
==========================
kubectl get pods -n kube-system
kubectl create -f pod.yaml --namespace=dev
kubectl create namespace dev
kubectl config set-context $(kubectl config current-context) --namespace=dev
kubectl get pods --all-namespace | kubectl get pods -A
==========================
kubectl get pods --selector env=dev
==========================
kubectl tain nodes node-name key=value:tain-effect
kubectl tain nodes node01 app=green:NoSchedule
==========================
kubectl label nodes node-name label-key=label-value
kubectl label --overwrite nodes node-name label-key- удалить метку
==========================
kubectl get daemonsets --all-namespaces
kubectl describe daemonset kube-proxy --namespace=kube-system
==========================
kubectl get events -owide
kubectl top node
kubectl top pod
kubectl top pod --containers=true --use-protocol-buffers > /opt/outputs/top-container-names.out
kubectl logs -f pod/log-generator-pod
kubectl logs webapp-2 -c simple-webapp
==========================
стратегии: recreate, rolling update
kubectl create -f deploy.yaml --record
kubectl rollout status deploy/myapp-deployment
kubectl rollout history deploy/myapp-deployment
kubectl edit deployment myapp-deployment
kubectl set image deploy/myapp-deployment webapp=ezikov/webapp:version3
kubectl apply -f deploy.yaml
kubectl rollout undo deploy/myapp-deployment откатиться на ревизию назад
===========================
kubectl create -f service.yaml
kubectl get services




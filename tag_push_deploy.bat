COPY %WORKSPACE%\webapp\target\webapp.war %WORKSPACE%
REM docker stop simple-regapp
REM docker rm simple-regapp
echo tag - %tag%
docker build -t bhanudocker3315/regapp:latest -t bhanudocker3315/regapp:%tag% %WORKSPACE%
docker push bhanudocker3315/regapp:latest
docker push bhanudocker3315/regapp:%tag%
REM docker run -d --name simple-regapp -p 8090:8080 bhanudocker3315/regapp
kubectl --kubeconfig="c:\users\bhanu_pallemsetty\.kube\config" apply -f k8s
kubectl rollout restart deployment.apps/deploy-regapp

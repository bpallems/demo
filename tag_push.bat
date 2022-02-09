COPY %WORKSPACE%\webapp\target\webapp.war %WORKSPACE%
docker stop simple-regapp
docker rm simple-regapp
echo tag - %tag%
docker build -t bhanudocker3315/regapp:latest -t bhanudocker3315/regapp:%tag% %WORKSPACE%
docker run -d --name simple-devops-container -p 8090:8080 bhanudocker3315/regapp

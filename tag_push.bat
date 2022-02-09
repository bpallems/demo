COPY %WORKSPACE%\webapp\target\webapp.war %WORKSPACE%
docker stop simple-regapp
docker rm simple-regapp
echo tag - %tag%
docker build -t bhanudocker3315/regapp:latest -t bhanudocker3315/regapp:%tag% %WORKSPACE%
echo "ab2534c7-32da-4eb7-92ff-f2ea5ab5a89c" | docker login -u "bhanudocker3315" --password-stdin
docker push bhanudocker3315/regapp:latest
docker push bhanudocker3315/regapp:%tag%
docker run -d --name simple-regapp -p 8090:8080 bhanudocker3315/regapp

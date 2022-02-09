COPY %WORKSPACE%\webapp\target\webapp.war %WORKSPACE%
docker stop simple-devops-container
docker rm simple-devops-container
docker build -t simple-devops-image %WORKSPACE%
docker run -d --name simple-devops-container -p 8090:8080 simple-devops-image

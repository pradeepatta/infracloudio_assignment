#Commands that I executes as part of  Part-1 of the Assignment

   
   mkdir /opt/apradeep/
   cd /opt/apradeep/
   git clone https://github.com/pradeepatta/infracloudio_assignment.git
   cd infracloudio_assignment/solution
   docker pull infracloudio/csvserver:latest
   docker pull prom/prometheus:v2.22.0
   docker images
   docker run -d --name csvserver infracloudio/csvserver:latest
   docker ps -a | grep -i csvserver
   docker logs 3165047bee12
   2021/09/28 11:24:23 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
   docker rm 3165047bee12
   vi gencsv.sh
   docker run -d --mount type=bind,source=$PWD/inputFile,target=/csvserver/inputdata --name csvserver infracloudio/csvserver:latest
   
   docker exec -it dd04494ec2e7 bash
   # netstat -anp | more
   tcp6       0      0 :::9300                 :::*                    LISTEN      1/csvserver
   
   docker stop dd04494ec2e7
   docker rm dd04494ec2e7
   
   docker run -d --mount type=bind,source=$PWD/inputFile,target=/csvserver/inputdata -p 9393:9300 --name csvserver infracloudio/csvserver:latest
   curl http://localhost:9393
   
   docker run -d --mount type=bind,source=$PWD/inputFile,target=/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange --name csvserver infracloudio/csvserver:latest
   
   docker run -d --mount type=bind,source=$PWD/inputFile,target=/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange --name csvserver infracloudio/csvserver:latest
   
   git status
   git add .
   git commit -m"Completed assignment-1 and pushing the changes to GitHub"
   git push

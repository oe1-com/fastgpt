# docker启动mongo后，需要进到mongo容器中，进行副本集初始化；host中的ip:port需要根据实际修改
docker exec -it mongo bash
mongo -u myusername -p mypassword --authenticationDatabase admin
rs.initiate({_id: "rs0",members: [{ _id: 0, host: "10.19.8.107:27017" }]});
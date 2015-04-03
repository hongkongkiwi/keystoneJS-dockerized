**Dockerized keystoneJS**

In this case the MongoDB instance runs on another machine inside a VPN. 
You need to set the db settings in keystone.js.

Consider that data inside a Docker container is not persistent. 
https://docs.docker.com/userguide/dockervolumes/ 
 

Inside this directory run

```

docker build  -t nodejs:keystone

```

and 


```

docker run --restart=always -p 60000:3000 --name keystoneJS nodejs:keystone


```

I have running nginx as a reverse proxy to access the site. See example.com.vhost file.

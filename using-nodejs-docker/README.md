
###### I need to create a network 
- [x] docker network create backend

###### Starting app is using express

1. Creating image
```
docker run --rm --network=backend -v $(pwd)/using-nodejs-docker/express-app/:/usr/app --name testing-node zotarelli/using-node:dev 
``` 
2 . I run node with express 
```
docker run --rm --network=backend -v $(pwd)/using-nodejs-docker/express-app/:/usr/app --name testing-node zotarelli/using-node:dev 
```
###### Starting app which is using fastfy
1. Entering on the folder
```
cd using-nodejs-docker/fastfy-app
```

2. Building image
```
docker build -t zotarelli/fastfy:dev . -f Dockerfile.dev
```

3. Running container
```
docker build -t zotarelli/fastfy:dev . -f Dockerfile.dev
```

4. This application requests that you run 
```
    node src/index.js
```

######  Creating a reverse proxy with nginx
```
```

[x] - configs

```
    location /express/ {
        proxy_http_version 1.1;
        proxy_cache_bypass $http_upgrade;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;

        proxy_pass http://testing-node:3000/
    }

    location /fastfy/ {
        proxy_http_version 1.1;
        proxy_cache_bypass $http_upgrade;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;

        proxy_pass http://testing-fastfy:3000/
    }
```
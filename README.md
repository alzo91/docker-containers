- [x] If occoured some issue like that:  
```docker.credentials.errors.InitializationError: docker-credential-desktop not installed or not available in PATH"```

- [x] That error was solved with:
```
vi ~/.docker/config.json 
cp ~/.docker/config.json ~/projects/docker-containers/docker-config-cp.json
sudo rm ~/.docker/config.json 
```
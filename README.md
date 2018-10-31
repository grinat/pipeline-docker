For use with gitlab-ci change .gitlab-ci.yml to:

```
image: grinat0/pipeline-docker:latest

services:
- docker:18.06-dind
variables:
  DOCKER_HOST: tcp://docker:2375
  DOCKER_DRIVER: overlay2
  
...ci jobs...  
  
```  

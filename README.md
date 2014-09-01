docker-devdocs
==============

[DevDocs][1] combines multiple API documentations in a fast, organized, and searchable interface. 
We - [catchy.io][2] - prepared a [Docker][3] image with a subset of those docs to make them available to our developers if they're offline.

Selected documentation: 

| Front | Back |
| ----- | ----- |
| angular | c |
| css | git |
| d3 | http  |
| dom | less  |
| html |markdown  |
| javascript  | node  |
| jquery_core  | php  |
| jquery_ui  | redis |
| jquery_mobile  | |




Usage
-----

Start (it will fetch the docker image if it's not downloaded):
```
docker run --rm -p 9292:9292 --name devdocs catchy/devdocs
```

Stop:
```
docker stop devdocs
```

Uninstall:
```
docker rmi catchy/devdocs
```

Docker image creation
---------------------
It's based on a Makefile, so you'll need the make command.
```
make
```

[1]: http://devdocs.io/ "DevDocs"
[2]: http://catchy.io "catchy.io"
[3]: http://docker.com "Docker"

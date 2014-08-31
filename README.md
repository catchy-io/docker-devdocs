docker-devdocs
==============

DevDocs combines API documentations, selected for http://catchy.io devs, in searchable interface.

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

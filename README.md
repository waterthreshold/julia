### Julia example 

---

### purpose 
	Just learning new programming language

### Usage 

first way:

1. pull the image container in your computer
```
	docker pull julia:latest
```
2. execute the below command
```
	docker run -it --rm -v "$PWD":/usr/myapp -w /usr/myapp julia julia script.jl 
```
---

second way:
using the docker file 
```
	docker build  . --no-cache
```

docker should be installed.  
docker-desktop for windows is free again, so you could use it - that is the easiest way! ;)  
!do not forget to expose the daemon without TLS in settings!

go to project root and execute  
`docker-compose up` or, if you need detach mode, `docker-compose up -d`

if something is changed in settings or in the code, the good idea will be to prune all volumes.
you could do it, for example, using these commands:

1) `docker-compose down` (stopping all running)
2) `docker system prune --volumes` (WARN! if you have something important in volumes - be careful!)
3) `docker image prune --all -f` (remove images from docker)
4) `docker-compose up` / `docker-compose up -d`

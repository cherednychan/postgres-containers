# postgres-containers

original task: Deploy two containers via docker-compose, connecting them in the 172.19.91.0/24 network. Both containers should be accessible via different domain names that correspond to their addresses within the 172.19.91.0/24 network. They should also be accessible over SSH from the local machine (user test.a) and mutually between each other (user test.b).
Container-1 (postgres15) should have a mounted volume pointing to an arbitrary directory on the host machine. This directory should contain a database with a custom (non-default) role that is restricted from logging in. Another role, inherited from the restricted one, should be configured to allow login access.

in this project one of the containers is made for PostreSQL. the other one uses ubuntu image. both start with supervisord as PID 1 so they are not dependent on their main processes. 

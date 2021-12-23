# images

## imagen base
FROM ubuntu

## execute commands
RUN apt update
RUN apt install python3 python3-dev -y
RUN apt install postgresql-client -y
RUN mkdir /app

## Define my work directory
WORKDIR /app

# enviromens variables for the container
# this variable can be modify run container runing command
# with the tag -e <name-variable>=<value>
# -e MSG='nuevo valor'
ENV MSG 'Saluda a todos'

#ADD index.html /app/
##
##COPY index.html /app/

## jecutar 
CMD python3 -m http.server 5000

EXPOSE 5000


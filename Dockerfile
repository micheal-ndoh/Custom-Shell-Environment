FROM ubuntu:latest

RUN apt update
COPY . /home/ubuntu/

RUN chmod u+x ./Source/*sh
RUN ./Source/all.sh

# Installing  required packages for Custom_shell_environment

RUN apt install -y figlet cowsay watch acpi zsh fortune lolcat
 

FROM ubuntu:latest

RUN apt update
COPY . /home/ubuntu/

# Installing  required packages for Custom_shell_environment

RUN apt install -y figlet cowsay watch acpi zsh fortune lolcat
 

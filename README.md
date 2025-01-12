 # **Custom Shell Environment**

A collection of custom shell scripts, functions, and configurations to enhance your comand-line experience.

**About**

This repository contains a set of customizable shell scripts, functions, alias and configurations that can be used to personalize your shell environment. It's designed to be adaptable to different shell environments, including Bash and Zsh

**Features**


* Customizable prompt and theme settings
* Enhanced command-line completion and suggestion features
* Improved file searching capabilities
* Additional shell functions for tasks such as file management
* 

**Contents**

* `search.sh`: A script to search for files on the entire system in a case-insensitive manner and count the lines in each file
* `aliases`: Alias to common linux commands
* `PS1 prompt`: A customized PS1 (prompt string 1) used to customize the appearance of the prompt, which includes information such as the username, hostname, and current working directory and git status
* `History enhancement and auto complete`: History enchancement like 
  `HISTCONTROL` environment variable  used to control how the command history is handled.
  `HISTSIZE and HISTFILESIZE`:Used to increase the number of commands stored in the history list and history file. Setting these variables to -1 allows unlimited history.
  
**Installation**


To install the custom shell environment, follow these steps:

1. Clone the repository: 
```bash
git clone https://github.com/micheal-ndoh/Custom-Shell-Environment.git
```
2. Navigate to the repository directory: `cd Custom-Shell-Environment`
Copy the search function to your ~/.bashrc or ~/.zshrc file:
```bash
cat search.sh >> ~/.bashrc
```
```bash
cat search.sh >> ~/.zshrc
```

To apply the changes, source the ~/.bashrc or ~/.zshrc file:
```bash
source ~/.bashrc
```


**Contributor**
* [LELE MAXWELL](https://github.com/lele-maxwell)
* [MICHEAL NDOH](https://github.com/micheal-ndoh)

**README**

For more information about this repository, including detailed instructions and examples, please see the [README file](https://github.com/micheal-ndoh/Custom-Shell-Environment/blob/main/README.md).

**Repository Link**
```shell
https://github.com/micheal-ndoh/Custom-Shell-Environment.git
```
# About the Search Function
A bash function to search for files on the entire system in a case-insensitive manner and count the lines in each file.

**Description**
The `search` function is a bash function that searches for files on the entire system in a case-insensitive manner and counts the lines in each file. It uses the `find` command to search for files and the `wc` command to count the lines.


**Usage**
Here's how to use `search` function, simply call it with the file name you want to search for as an argument like this:
```bash
search filename
```
replace file name with the  actual file name you are looking for and wait for result.

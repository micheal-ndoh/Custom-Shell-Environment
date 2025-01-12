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
 * `HISTCONTROL` environment variable  used to control how the command history is handled.
 * `HISTSIZE and HISTFILESIZE`:Used to increase the number of commands stored in the history list and history file. Setting these variables to -1 allows unlimited history.
  
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
>replace file name with the  actual file name you are looking for and wait for result.
# About Prompt string 1(PS1)
Use the PS1 to Display username, hostname, current directory, and Git branch, with diffenet colors when the terminal is launched
For Zsh
```bash
cat PS1.sh > ~/.zshrc
```
For Bash 
```bash
cat PS1.sh > ~/.bashrc
```
remember the color intensity can be increased to change the colors. [Click here](https://linuxconfig.org/bash-prompt-basics) to know more about the prompt and how to customise to reach your desired needs.

# About Aliasses
## Git and System Administration Aliases

### Git Aliases

* `alias gs='git status'`: Quickly check the status of your Git repository.
* `alias gc='git commit -m'`: Commit changes with a message. Note that you'll need to provide the commit message after running this alias, e.g., `gc "message"`.
* `alias gp='git push'`: Push changes to a remote repository.
* `alias gl='git log'`: View the commit history.
* `alias gb='git branch'`: List all branches in the repository.
* 

### VSCode Editor Alias

* `alias c='code'`: Open the VSCode editor. You can use this alias to open a file or directory in VSCode, e.g., `c project`.

### File System Aliases

* `alias ls='ls -lh'`: List files and directories in a human-readable format. The `-lh` option displays file sizes in a readable format and sorts the output by file type.
* `alias tree='tree -a'`: Display a tree-like representation of the directory structure. The `-a` option includes hidden files and directories in the output.

### System Administration Aliases

* `alias r='sudo reboot'`: Reboot the system with superuser privileges.
* `alias s='sudo shutdown'`: Shut down the system with superuser privileges.
* `alias u='sudo apt update'`: Update the package list on a Debian-based system.
* `alias i='sudo apt install'`: Install packages on a Debian-based system.

After redirecting the aliases to ~/.zsh or ~/bashrc `source ~/.bashrc` for bash or `source ~/.zshrc` for Zsh to apply the changes.

# About Autocomplete and History enhancement
 * For `Zsh`, the compinit function is used to initialize the completion system. The autoload -Uz compinit line loads the compinit function, and the compinit line initializes the completion system.
```bash
   # Enable autocomplete for aliases and functions
autoload -Uz compinit
compinit
```

* For `Bash`, the bash_completion script is used to enable completion for commands and aliases. The source /usr/share/bash-completion/bash_completion line loads the bash_completion script.
  
```bash
# Enable autocomplete for aliases and functions
source /usr/share/bash-completion/bash_completion
```
* HISTSIZE=1000 means that the bash history list will store the last 1000 commands.
* HISTFILESIZE means that the bash history file will store up to 2000 lines of commands.
* HISTCONTROL=ignoreboth Ignore duplicate commands and commands that start with a space.
Then run

```bash
source ~/.bashrc
```

```bash
source ~/.zshrc
```
 to apply the changes.

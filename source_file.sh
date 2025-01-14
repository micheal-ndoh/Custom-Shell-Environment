
#!/bin/bash

# Making  all files in Custom-shell  directory executable
chmod +x ./*

# Source all files in the directory to it's found in the .bashrc
for file in ./*; do
  if [ -f "$file" ]; then
    source "$file"
  fi
done


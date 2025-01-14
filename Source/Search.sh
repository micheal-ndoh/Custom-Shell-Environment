echo "  # Function to search for files on the entire system in a case-insensitive manner and count lines in each file
search() {
    if [ #$ -ne 1 ]; then
        echo Usage: search filename
        return 1
    fi

    filename=

    # Search for files on the entire system in a case-insensitive manner
    find / -type f -iname  2>/dev/null | while read file_path; do
        echo File: 
        # Count the lines in the file
        line_count=
        echo The file has lines.
        echo # Empty line for better readability
    done
}   
 "  >> ~/.zshrc

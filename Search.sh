# Function to search for files on the entire system in a case-insensitive manner and count lines in each file
search() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: search filename"
        return 1
    fi

    filename=$1

    # Search for files on the entire system in a case-insensitive manner
    find / -type f -iname "$filename" 2>/dev/null | while read file_path; do
        echo "File: $file_path"
        # Count the lines in the file
        line_count=$(wc -l < "$file_path")
        echo "The file has $line_count lines."
        echo # Empty line for better readability
    done
}
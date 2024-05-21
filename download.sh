#!/bin/bash

# download_script.sh

download_file() {
    url=$1
    directory=$2

    # Get the file name from the url
    file_name=$(basename $url)

    # Create the directory if it doesn't exist
    mkdir -p $directory

    # Download the file
    wget -P $directory $url

    echo "File downloaded to $directory/$file_name"
}

# Example usage:
download_file "http://example.com/myfile.txt" "/path/to/directory"

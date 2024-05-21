This bash script is designed to download files from the Internet at a specified URL and save them in a specified directory.

## Usage

1. Make sure you have the `wget` utility installed.
2. Save the contents of the script to the `download_script.sh` file.
3. Make the file executable: `chmod +x download_script.sh`.
4. Run the script, passing it the URL of the file to download and the directory path to save the file: `./download_script.sh <URL address> <path/to/directory>`.

## Functions

The script contains the following function:

- `download_file()`:
  - Takes two arguments: `$1` (the URL of the file to download) and `$2` (the directory path to save the file).
  - Extracts the file name from the URL using `basename`.
  - Creates a directory to save the file if it does not exist using the `mkdir -p` command.
  - Downloads a file from the specified URL to the specified directory using the `wget` utility.
  - Outputs a message indicating that the file was successfully downloaded, specifying the path to the saved file.

## Example Usage

The script provides an example of using the `download_file()` function:

```bash
download_file "http://example.com/myfile.txt" "/path/to/directory"
```

This command will download the `myfile.txt` file from the specified URL and save it in the `/path/to/directory` directory.

## Notes

- The `wget` utility must be installed on the system for the script to work correctly.
- The script does not perform any checks for URL validity or whether the file is available for download. In the event of a download error, the script will terminate with an appropriate error code.
- Make sure you have the necessary permissions to create the directory and save the file to the specified location.

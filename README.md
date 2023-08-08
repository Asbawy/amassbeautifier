# Amass Beautifier
This repository contains two scripts, `amassbeautifier.py` and `amassbeautifier.sh`, designed to make the output file from Amass more readable by removing ANSI escape codes from the text. These scripts are helpful when dealing with Amass scan results or logs, where ANSI escape codes are used for text formatting but might interfere with parsing or readability.
### `amassbeautifier.py`
#### Description
`amassbeautifier.py` is a Python script that removes ANSI escape codes from the input text file and saves the cleaned text to an output file. It uses the argparse library to accept input and output file paths as arguments and provides an option to specify the paths of the input and output files.
#### How to Use
To use the script, run the following command in your terminal:
```shell
python3 amassbeautifier.py -i <input_file> -o <output_file>
```
Replace `<input_file>` with the path to the file containing the Amass output or logs that you want to process. Similarly, replace `<output_file>` with the desired path for the cleaned output.

### `amassbeautifier.sh`
#### Description
`amassbeautifier.sh` is a Bash script that performs the same task as `amassbeautifier.py`. It also removes ANSI escape codes from the input text file and saves the cleaned text to an output file. The script uses awk for removing the ANSI escape codes.
#### How to Use
```shell
./amassbeautifier.sh -i <input_file> -o <output_file>
```
### Notes
- Both scripts are designed to handle Amass output files that contain ANSI escape codes used for text formatting.
- The cleaned output files will have all ANSI escape codes removed, making the content more readable and suitable for further processing or analysis.
- If the input file is not found, an error message will be displayed, and the script will terminate.

Feel free to use these scripts to beautify your Amass output and improve your analysis experience. If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request. Happy hacking!

import argparse
import re

def remove_ansi_codes(text):
    ansi = re.compile(r'\x1B\[[0-?]*[ -/]*[@-~]')
    return ansi.sub('',text)

def main():
    parser = argparse.ArgumentParser(description='make output file from amass readable remove ANSI escape codes from text file')
    parser.add_argument('-i', '--input', type=str, help='Input file path', required=True)
    parser.add_argument('-o', '--output', type=str, help='Output file path', required=True)
    args = parser.parse_args()
    input_file = args.input
    output_file = args.output

    try:
        with open(input_file, 'r') as file:
            text = file.read()
            clean_txt = remove_ansi_codes(text)

        with open(output_file, 'w') as file:
            file.write(clean_txt)

        print(f'Success! , Clean text saved to {output_file}')
    except FileNotFoundError:
        print(f'Error: Input file "{input_file}" not found!')
    except Exception as e:
        print('fError: {e}')

if __name__ == "__main__":
    main()
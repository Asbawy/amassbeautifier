#!/bin/bash

remove_ansi_codes() {
    local input_text="$1"
    echo "$input_text" | awk '{gsub(/\x1b\[[0-9;]*[a-zA-Z]/, "")}1'
}

main() {
    input_file=""
    output_file=""

    while [[ $# -gt 0 ]]; do
        case $1 in
            -i | --input)
                input_file=$2
                shift 2
                ;;
            -o | --output)
                output_file=$2
                shift 2
                ;;
            *)
                echo "Invalid option: $1"
                exit 1
                ;;
        esac
    done

    if [[ -z $input_file || -z $output_file ]]; then
        echo "Usage: $0 -i <input_file> -o <output_file>"
        exit 1
    fi

    if [[ ! -f $input_file ]]; then
        echo "Error: Input file '$input_file' not found!"
        exit 1
    fi

    text=$(cat "$input_file")
    clean_txt=$(remove_ansi_codes "$text")

    echo "$clean_txt" > "$output_file"

    echo "Success! Clean text saved to $output_file"
}

main "$@"
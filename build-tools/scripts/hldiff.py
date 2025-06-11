import argparse

def get_new_object_names(list_file_path):
    """
    Reads the list of strings from a file, with one word per line.

    Parameters:
    list_file_path (str): path to file containing list of new objects.

    Returns:
    list of strings read from the file
    """
    try:
        with open(list_file_path, 'r', encoding='utf-8') as file:
            strings_list = [line.strip() for line in file if line.strip()]
        return strings_list
    except FileNotFoundError:
        print(f"The file '{list_file_path}' does not exist.")
        return []
    except IOError as e:
        print(f"An I/O error occurred: {e}")
        return []

def highlight_new_object_names(input_file_path, output_file_path, strings_list):
    """
    Reads a file, replaces each occurrence of any string in the list `strings_list` that appears as a substring
    in the file content with the substring wrapped in '\\hldiff{}', and writes the modified content to a new file.

    Parameters:
    input_file_path (str): The path to the input file.
    output_file_path (str): The path to the output file where the modified content will be saved.
    strings_list (list of str): The list of strings to highlight.
    """
    try:
        # Read the content of the input file
        with open(input_file_path, 'r', encoding='utf-8') as file:
            content = file.read()

        # Replace occurrences of each string in the list with \hldiff{}
        for x in strings_list:
            content = content.replace(x, f"\\hldiff{{{x}}}")

        # Write the modified content to the output file
        with open(output_file_path, 'w', encoding='utf-8') as file:
            file.write(content)

        print(f"File has been successfully modified and saved as '{output_file_path}'.")

    except FileNotFoundError:
        print(f"The file '{input_file_path}' does not exist.")
    except IOError as e:
        print(f"An I/O error occurred: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Highlight specific substrings in a file with \\hldiff{}.")
    parser.add_argument('input_file', help="Path to the input file")
    parser.add_argument('output_file', help="Path to the output file")
    parser.add_argument('list_file', help="Path to the file containing the list of new objects")
    args = parser.parse_args()

    strings_list = get_new_object_names(args.list_file)
    if strings_list:
        highlight_new_object_names(args.input_file, args.output_file, strings_list)

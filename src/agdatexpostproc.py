import argparse

def replace_maps_with_map(input_file_path, output_file_path):
    """
    Reads a .tex file, replaces each occurrence of 'mapˢ' with 'map',
    and writes the altered content to a new file.
    """
    try:
        # Read the content of the input file
        with open(input_file_path, 'r', encoding='utf-8') as file:
            content = file.read()

        # Replace occurrences of 'mapˢ' with 'map.'
        modified_content = content.replace("mapˢ", "map")

        # Write the modified content to the output file
        with open(output_file_path, 'w', encoding='utf-8') as file:
            file.write(modified_content)

        print(f"File has been successfully modified and saved as '{output_file_path}'.")

    except FileNotFoundError:
        print(f"The file '{input_file_path}' does not exist.")
    except IOError as e:
        print(f"An I/O error occurred: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Replace 'mapˢ' with 'map' in a .tex file.")
    parser.add_argument('input_file', help="Path to the input .tex file")
    parser.add_argument('output_file', help="Path to the output .tex file")
    args = parser.parse_args()

    replace_maps_with_map(args.input_file, args.output_file)

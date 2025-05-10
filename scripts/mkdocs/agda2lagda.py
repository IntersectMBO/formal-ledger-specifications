import os
import pathlib

def convert_agda_to_literate_agda(root_dir_str):
    """
    Traverse all subdirectories of a given directory and convert non-literate
    Agda files (.agda) to literate Agda in Markdown style (.lagda.md),
    and remove original files.

    Args:
        root_dir_str (str): The path to the root directory to traverse.
    """
    root_dir = pathlib.Path(root_dir_str)
    if not root_dir.is_dir():
        print(f"Error: The provided path '{root_dir_str}' is not a valid directory.")
        return

    print(f"Starting conversion in directory: {root_dir.resolve()}")

    agda_files_found = 0
    converted_files_count = 0

    for agda_file_path in root_dir.rglob('*.agda'):
        agda_files_found += 1
        print(f"\nFound .agda file: {agda_file_path}")

        # Construct the new filename
        new_file_name = agda_file_path.stem + ".lagda.md"
        literate_file_path = agda_file_path.with_name(new_file_name)

        print(f"  -> Will be converted to: {literate_file_path}")

        try:
            # Read the content of the original .agda file
            with open(agda_file_path, 'r', encoding='utf-8') as f_original:
                original_content = f_original.read()

            # Prepare the new content
            # Ensure there's a newline after the opening ```agda if not already
            # and a newline before the closing ``` if the file isn't empty.
            new_content = "```agda\n" + original_content
            if original_content and not original_content.endswith('\n'):
                new_content += "\n"
            new_content += "```\n" # Add a final newline for robustness

            # Write the modified content to the new .lagda.md file
            with open(literate_file_path, 'w', encoding='utf-8') as f_literate:
                f_literate.write(new_content)

            print(f"  Successfully created: {literate_file_path}")

            # Delete the original .agda file
            try:
                agda_file_path.unlink()
                print(f"  Successfully deleted original file: {agda_file_path}")
                converted_files_count +=1
            except OSError as e:
                print(f"  Error deleting original file {agda_file_path}: {e}")

        except FileNotFoundError:
            print(f"  Error: Original file {agda_file_path} not found during processing (should not happen if rglob found it).")
        except IOError as e:
            print(f"  Error processing file {agda_file_path}: {e}")
        except Exception as e:
            print(f"  An unexpected error occurred with file {agda_file_path}: {e}")

    if agda_files_found == 0:
        print("No .agda files found in the specified directory and its subdirectories.")
    else:
        print(f"\nConversion process finished.")
        print(f"Total .agda files found: {agda_files_found}")
        print(f"Total files successfully converted and originals deleted: {converted_files_count}")

if __name__ == '__main__':
    # The target directory is optional; default is current working directory.
    target_directory_input = input("Enter the root directory (leave blank for current directory): ")

    if not target_directory_input:
        # Default to current working directory
        target_directory_path = pathlib.Path.cwd()
        print(f"No directory provided, defaulting to current working directory: {target_directory_path.resolve()}")
    else:
        target_directory_path = pathlib.Path(target_directory_input)

    if not target_directory_path.is_dir():
         print(f"The path '{target_directory_path.resolve()}' is not a valid directory. Exiting.")
    else:
        # Ask for confirmation before proceeding
        # confirm = input(f"This script will rename .agda files to .lagda.md and modify their content "
        #                 f"within '{target_directory_path.resolve()}'.\n"
        #                 f"Original .agda files will be DELETED after successful conversion.\n"
        #                 "Are you sure you want to proceed? (yes/no): ").lower()
        # if confirm == 'yes':
        #     convert_agda_to_literate_agda(str(target_directory_path)) # Pass as string
        # else:
        #     print("Operation cancelled by the user.")
        convert_agda_to_literate_agda(str(target_directory_path)) # Pass as string

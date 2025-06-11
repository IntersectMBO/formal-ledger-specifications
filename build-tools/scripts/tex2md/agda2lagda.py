# PROJECT_ROOT/scripts/mkdocs/agda2lagda.py
import pathlib
import logging
import os # For os.getcwd() if making it standalone runnable

# Get project root if script needs to log relative paths like in build.py.
# (assumes agda2lagda.py is in PROJECT_ROOT/scripts/mkdocs/)
PROJECT_ROOT_FOR_LOGGING = pathlib.Path(__file__).resolve().parent.parent.parent

def convert_agda_to_lagda_md(root_dir_str, project_root_for_logging=None):
    """
    Traverse subdirectories of given directory, convert non-literate
    Agda files (.agda) to literate Agda in Markdown style (.lagda.md),
    and remove original files.

    Args:
        root_dir_str (str): path to root directory to traverse.
        project_root_for_logging (pathlib.Path, optional): base path for logging relative paths
                                                           (defaults: this script's project root).
    """
    root_dir = pathlib.Path(root_dir_str)
    base_log_path = project_root_for_logging or PROJECT_ROOT_FOR_LOGGING

    if not root_dir.is_dir():
        logging.error(f"Conversion Error: Path '{root_dir.resolve()}' is not a valid directory.")
        return False # indicate failure

    logging.info(f"Starting .agda to .lagda.md conversion in directory: {root_dir.resolve()}")

    agda_files_found = 0
    converted_files_count = 0
    conversion_successful = True # track overall success

    for agda_file_path in root_dir.rglob('*.agda'):
        agda_files_found += 1
        try:
            relative_agda_path = agda_file_path.relative_to(base_log_path)
        except ValueError: # not under base_log_path, log absolute
            relative_agda_path = agda_file_path

        logging.info(f"  Found .agda file: {relative_agda_path}")

        new_file_name = agda_file_path.stem + ".lagda.md"
        literate_file_path = agda_file_path.with_name(new_file_name)

        try:
            relative_literate_path = literate_file_path.relative_to(base_log_path)
        except ValueError:
            relative_literate_path = literate_file_path

        logging.info(f"    -> Will be converted to: {relative_literate_path}")

        try:
            with open(agda_file_path, 'r', encoding='utf-8') as f_original:
                original_content = f_original.read()

            new_content = "```agda\n" + original_content
            if original_content and not original_content.endswith('\n'):
                new_content += "\n"
            new_content += "```\n"

            with open(literate_file_path, 'w', encoding='utf-8') as f_literate:
                f_literate.write(new_content)
            logging.debug(f"    Successfully created: {relative_literate_path}")

            try:
                agda_file_path.unlink()
                logging.debug(f"    Successfully deleted original file: {relative_agda_path}")
                converted_files_count +=1
            except OSError as e:
                logging.error(f"    Error deleting original file {relative_agda_path}: {e}")
                conversion_successful = False # mark as failed if deletion fails

        except FileNotFoundError:
            logging.error(f"    Error: Original file {relative_agda_path} not found during processing.")
            conversion_successful = False
        except IOError as e:
            logging.error(f"    Error processing file {relative_agda_path}: {e}")
            conversion_successful = False
        except Exception as e:
            logging.error(f"    An unexpected error occurred with file {relative_agda_path}: {e}")
            conversion_successful = False

    if agda_files_found == 0:
        logging.info("No .agda files found for conversion.")
    else:
        logging.info(f"  .agda to .lagda.md conversion process finished for {root_dir.resolve()}.")
        logging.info(f"  Total .agda files found: {agda_files_found}")
        logging.info(f"  Total files successfully converted and originals deleted: {converted_files_count}")

    return conversion_successful and (agda_files_found == converted_files_count if agda_files_found > 0 else True)


if __name__ == '__main__':
    # runnable as standalone script
    logging.basicConfig(level=logging.INFO, # basic logging if run as standalone script
                        format='%(asctime)s - %(levelname)-8s - %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')

    target_dir_input = input("Enter the root directory to convert .agda files (leave blank for current): ")
    target_directory = target_dir_input if target_dir_input else str(pathlib.Path.cwd())

    if not pathlib.Path(target_directory).is_dir():
        logging.error(f"Error: '{target_directory}' is not a valid directory.")
    else:
        confirm = input(f"This will convert .agda to .lagda.md and DELETE originals in '{pathlib.Path(target_directory).resolve()}'.\n"
                        "Are you sure? (yes/no): ").lower()
        if confirm == 'yes':
            success = convert_agda_to_lagda_md(target_directory)
            if success:
                logging.info("Standalone conversion completed successfully.")
            else:
                logging.error("Standalone conversion encountered errors.")
        else:
            logging.info("Standalone conversion cancelled.")

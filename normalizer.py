import os
import codecs

import os
import codecs

def normalize_and_save_text(file_path):
    # Try opening the file with UTF-8 encoding
    try:
        with codecs.open(file_path, 'r', 'utf-8') as file:
            text = file.read()
    except UnicodeDecodeError:
        # If UTF-8 fails, try another common encoding like ISO-8859-1
        try:
            with codecs.open(file_path, 'r', 'iso-8859-1') as file:
                text = file.read()
            print(f"Re-encoded from ISO-8859-1 to UTF-8: {file_path}")
        except UnicodeDecodeError:
            # If re-encoding fails, print an error message and exit the function
            print(f"Failed to decode file: {file_path}")
            return  # Stop further processing for this file

    # Write the file back in UTF-8 encoding regardless of the original encoding
    with codecs.open(file_path, 'w', 'utf-8') as file:
        file.write(text)
    print(f"Converted successfully to UTF-8: {file_path}")

def process_folder(folder_path):
    # List all files in the specified directory
    for filename in os.listdir(folder_path):
        if filename.endswith('.txt'):  # Modify if you're not working with .txt files
            file_path = os.path.join(folder_path, filename)
            normalize_and_save_text(file_path)

folder_path = r"local/path"  # Replace with your path
normalized_texts = process_folder(folder_path)

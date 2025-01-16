[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/x_3ULh4W)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=17705703)
# Note to Shelf

A simple notes script in bash for quickly adding, listing, searching, or clearing notes.

## Usage

1. To make this script executable, you must use `chmod +x note.sh`.

2. To run the functions, you must use either `./note.sh "command"` or `bash note.sh "command"`

### Commands


1. `add`: All of the command input after "add" is recorded as the note. The note's timestamp is also recorded.
    * Do not include any quotes in your note, unless surrounded entirely.
    * Never use 2 exclamation marks in a row (!!)
    * If attempting to add special characters, wrap the text in backslashes, placing the second '\' inbetween the last 2 characters.  (`\Hello World\!`, `\Buy milk & eggs tomorro\w`)

2. `list`: Standalone command

3. `search`: All of the input after "search" is used as the keyphrase.

4. `clear`: Standalone command. Will be promted 4 separate times to confirm the delete.
    * 
##
<!--

Create a shell script that functions as a command-line note-taking tool. This tool should help you quickly capture and organize thoughts, reminders, and tasks directly from the terminal.

## Requirements

- The script must support the following commands:
    - Add a new note: `note add "Your note text here"`
    - List all notes: `note list`
    - Search notes: `note search "keyword"`
- Implementation requirements:
    - Store notes in a text file with proper date/time stamps
    - Include error handling for all commands
    - Implement input validation
    - Add proper logging for debugging

## Testing Criteria

Your script will be tested against the following scenarios:

- Adding notes with special characters
- Proper file operations (read/write)
- Correct date/time formatting
- Search functionality accuracy
- Proper exit codes for success/failure

## Example Usage

```bash
#!/bin/bash

# Add a note
$ ./note.sh add "Schedule dentist appointment"
Note added successfully

# List all notes
$ ./note.sh list
2025-01-06 12:04:06 - Schedule dentist appointment
2025-01-06 12:05:04 - Buy groceries

# Search notes
$ ./note.sh search "dentist"
2025-01-06 12:04:06 - Schedule dentist appointment
```

## Tips and Tricks

You might find the following resources helpful for completing this assignment:

- https://www.redhat.com/en/blog/arguments-options-bash-scripts
- https://linuxhint.com/bash_append_line_to_file/
- https://linuxconfig.org/how-to-find-a-string-or-text-in-a-file-on-linux
- https://www.geeksforgeeks.org/create-timestamp-variable-in-bash-script/

-->
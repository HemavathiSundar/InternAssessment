#Task10: Write a shell script to delete empty directories.
#!/bin/bash

# Function to delete empty directories
function delete_empty_directories {
  find . -type d -empty -delete
}

# Execute the function
delete_empty_directories

# Display a message
echo "Empty directories deleted."

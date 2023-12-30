#Task3: Write a shell script to list only usernames.
#!/bin/bash

# Extract and display usernames from /etc/passwd
awk -F: '{print $1}' /etc/passwd

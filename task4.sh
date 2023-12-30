#Task4: Write a shell script to display the current CPU, memory, and disk space.
#!/bin/bash

# Function to display CPU usage
function display_cpu {
  echo "CPU Usage:"
  top -bn 1 | grep '%Cpu' | awk '{print "  User: " $2 "\n  System: " $4 "\n  Idle: " $8}'
}

# Function to display memory usage
function display_memory {
  echo -e "\nMemory Usage:"
  free -h | grep "Mem" | awk '{print "  Total: " $2 "\n  Used: " $3 "\n  Free: " $4}'
}

# Function to display disk space
function display_disk_space {
  echo -e "\nDisk Space:"
  df -h | awk '$NF=="/"{print "  Total: " $2 "\n  Used: " $3 "\n  Free: " $4 "\n  Percentage Used: " $5}'
}

# Display information
display_cpu
display_memory
display_disk_space
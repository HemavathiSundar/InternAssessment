#Task9: Write a shell script to print the public IP of the local machine.
#!/bin/bash

# Get public IP address using an external service
public_ip=$(curl -s https://api64.ipify.org?format=json | jq -r '.ip')

# Print the public IP address
echo "Public IP address: $public_ip"
#!/bin/bash

# Download the security agent installation script
wget -q https://example.com/path/to/security_agent -O /tmp/security_agent

# Make the downloaded script executable
chmod +x /tmp/security_agent

# Execute the installation script
/tmp/security_agent install

# Clean up by removing the installation script
rm -f /tmp/security_agent

# Verify installation
if command -v security_agent &> /dev/null
then
    echo "Security agent installed successfully."
else
    echo "Security agent installation failed."
    exit 1
fi
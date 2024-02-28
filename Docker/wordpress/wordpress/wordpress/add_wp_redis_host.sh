#!/bin/bash

# Define the line to add
line_to_add="define('WP_REDIS_HOST', 'wordpressredis');"

# Define the file to modify
file_to_modify="wp-config.php"

# Check if the file exists
if [ -f "$file_to_modify" ]; then
    # Add the line after "<?php" if it's present
    if grep -q '<?php' "$file_to_modify"; then
        sed -i "/<?php/a $line_to_add" "$file_to_modify"
        echo "Line added successfully."
    else
        echo "File does not contain '<?php' tag. Unable to add the line."
    fi
else
    echo "File $file_to_modify does not exist."
fi

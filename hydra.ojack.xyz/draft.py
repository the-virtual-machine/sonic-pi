import os
from datetime import datetime, timezone

# Prompt user for post details
title = input("Enter a file name: ").lower().replace(' ', '_')

# Get current UTC time
current_utc_time = datetime.now(timezone.utc)

# Format the date for filename and metadata using UTC time
date_for_filename = current_utc_time.strftime("%Y-%m-%d")
current_time_for_metadata = current_utc_time.strftime("%Y-%m-%d %H:%M:%S %z")

# Get current UNIX time
current_unix_time = int(current_utc_time.timestamp())

# Create the content of the post with UTC time and UNIX time
content = f"""// ------------------------------------------------------------------------- //
// Title: {title}.js
//
// Date: {date_for_filename}
// Unix: {current_unix_time}
// Author: the_virtual_machine
// Licence: CC BY-NC-SA 4.0 - https://creativecommons.org/licenses/by-nc-sa/4.0/
//
// Description: 
// ------------------------------------------------------------------------- //

"""

# Generate filename with the same text as the title
filename = f"{title}.js"

# # Create _drafts directory if not exists
# if not os.path.exists("path/to/dir"):
#     os.makedirs("path/to/dir")

# Write the content to a new file
with open(filename, "w") as file:
    file.write(content)

print(f"Draft created: {filename}")

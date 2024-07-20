import os
from datetime import datetime, timezone

# Prompt user for post details
title = input("Enter the title of your post: ")

# Get current UTC time
current_utc_time = datetime.now(timezone.utc)

# Format the date for filename and metadata using UTC time
date_for_filename = current_utc_time.strftime("%Y-%m-%d")
current_time_for_metadata = current_utc_time.strftime("%Y-%m-%d %H:%M:%S %z")

# Get current UNIX time
current_unix_time = int(current_utc_time.timestamp())

# Create the content of the post with UTC time and UNIX time
content = f"""# {title}  
<sup>{current_time_for_metadata}</sup>  
<sup>{current_unix_time}</sup>  


"""

# Generate filename with UTC time
filename = f"{date_for_filename}-{title.lower().replace(' ', '-')}.md"

# Create _drafts directory if not exists
if not os.path.exists("thoughts/"):
    os.makedirs("thoughts")

# Write the content to a new file
with open(filename, "w") as file:
    file.write(content)

print(f"Draft created: {filename}")

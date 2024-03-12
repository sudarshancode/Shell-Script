#write a shell script chech present directory ,
#!/bin/bash

echo "Present working directory: $(pwd)"

echo "File modified within last 24hours:"
find . -type f -mtime -1 -print

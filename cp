# Create a copy of a file
cp ~/Desktop/foo.txt ~/Downloads/foo.txt

# Create a copy of a directory
cp -r ~/Desktop/cruise_pics/ ~/Pictures/

# Create a copy but ask to overwrite if the destination file already exists
cp -i ~/Desktop/foo.txt ~/Documents/foo.txt

# Rename existing files
cp --backup=t src dst
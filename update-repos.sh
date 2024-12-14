#!/bin/bash
# save as update-repos.sh

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print status
print_status() {
    echo -e "${BLUE}>>> $1${NC}"
}

# Function to commit and push changes
commit_and_push() {
    local dir=$1
    local message=$2

    cd $dir

    # Check if there are changes to commit
    if [[ -n $(git status -s) ]]; then
        print_status "Committing changes in $dir"
        git add .
        git commit -m "$message"
        git push
        echo -e "${GREEN}✓ Changes pushed successfully in $dir${NC}"
    else
        echo -e "${GREEN}✓ No changes to commit in $dir${NC}"
    fi
}

# Get commit message
if [ -z "$1" ]; then
    read -p "Enter commit message: " commit_message
else
    commit_message="$1"
fi

# Store initial directory
initial_dir=$(pwd)

# Update elemental framework
print_status "Updating elemental framework..."
commit_and_push "elemental" "$commit_message"

# Update main project
print_status "Updating main project..."
cd $initial_dir
commit_and_push "." "Update elemental framework: $commit_message"

print_status "All updates completed! 🎉"

# Make the script executable: chmod +x update-repos.sh
# With commit message as argument
# ./update-repos.sh "Update button styles"
# Or without argument (it will prompt for message)
#./update-repos.sh

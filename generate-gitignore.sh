#!/bin/bash

# Define the function to determine project type
detect_project_type() {
    local dir=$1
    
    # Check for common project identifiers
    if [ -f "$dir/package.json" ]; then
        echo "node"
    elif [ -f "$dir/Gemfile" ]; then
        echo "ruby"
    elif [ -f "$dir/pom.xml" ] || [ -f "$dir/build.gradle" ]; then
        echo "java"
    elif [ -f "$dir/go.mod" ]; then
        echo "go"
    elif [ -f "$dir/requirements.txt" ] || [ -f "$dir/setup.py" ] || [ -d "$dir/.venv" ] || [ -f "$dir/Pipfile" ]; then
        echo "python"
    elif [ -f "$dir/composer.json" ]; then
        echo "php"
    elif [ -f "$dir/Cargo.toml" ]; then
        echo "rust"
    elif [ -f "$dir/AndroidManifest.xml" ]; then
        echo "android"
    elif [ -d "$dir/ios" ] && [ -d "$dir/android" ] && [ -f "$dir/pubspec.yaml" ]; then
        echo "flutter"
    elif [ -f "$dir/pubspec.yaml" ]; then
        echo "dart"
    elif [ -f "$dir/CMakeLists.txt" ] || [ -f "$dir/Makefile" ] && [ -d "$dir/src" ] && [ -d "$dir/include" ]; then
        echo "c++"
    elif [ -f "$dir/Podfile" ] || [ -d "$dir/*.xcodeproj" ]; then
        echo "swift"
    elif [ -f "$dir/mix.exs" ]; then
        echo "elixir"
    elif [ -f "$dir/shard.yml" ]; then
        echo "crystal"
    elif [ -f "$dir/Dockerfile" ] || [ -f "$dir/docker-compose.yml" ]; then
        echo "docker"
    elif [ -d "$dir/.terraform" ] || [ -f "$dir/*.tf" ]; then
        echo "terraform"
    else
        # Look for language-specific directories and file extensions
        find "$dir" -type f -name "*.py" | grep -q . && echo "python" && return
        find "$dir" -type f -name "*.js" -o -name "*.ts" | grep -q . && echo "node" && return
        find "$dir" -type f -name "*.go" | grep -q . && echo "go" && return
        find "$dir" -type f -name "*.rb" | grep -q . && echo "ruby" && return
        find "$dir" -type f -name "*.java" | grep -q . && echo "java" && return
        find "$dir" -type f -name "*.php" | grep -q . && echo "php" && return
        find "$dir" -type f -name "*.rs" | grep -q . && echo "rust" && return
        find "$dir" -type f -name "*.swift" | grep -q . && echo "swift" && return
        find "$dir" -type f -name "*.cpp" -o -name "*.h" | grep -q . && echo "c++" && return
        find "$dir" -type f -name "*.ex" -o -name "*.exs" | grep -q . && echo "elixir" && return
        find "$dir" -type f -name "*.cr" | grep -q . && echo "crystal" && return
        
        # Default to a basic gitignore if no specific project type is detected
        echo "basic"
    fi
}

# Get the current directory
DIR=$(pwd)

# Detect project type
PROJECT_TYPE=$(detect_project_type "$DIR")

echo "Detected project type: $PROJECT_TYPE"

# Create .gitignore file based on project type
GITIGNORE_FILE="$DIR/.gitignore"

# Check if .gitignore already exists
if [ -f "$GITIGNORE_FILE" ]; then
    echo ".gitignore already exists. Backing up to .gitignore.bak"
    cp "$GITIGNORE_FILE" "$GITIGNORE_FILE.bak"
fi

# Function to fetch gitignore template from gitignore.io API
fetch_gitignore() {
    local project_type=$1
    curl -s "https://www.toptal.com/developers/gitignore/api/$project_type,macos" > "$GITIGNORE_FILE"
    
    # Add additional custom patterns
    echo -e "\n# Custom patterns\n.DS_Store\n.idea/\n.vscode/\n*.log\ntmp/\n" >> "$GITIGNORE_FILE"
    
    if [ $? -eq 0 ]; then
        echo "Created .gitignore for $project_type project"
    else
        echo "Error fetching gitignore template"
        exit 1
    fi
}

# Create gitignore based on project type
case $PROJECT_TYPE in
    node)
        fetch_gitignore "node"
        ;;
    python)
        fetch_gitignore "python"
        ;;
    ruby)
        fetch_gitignore "ruby,rails"
        ;;
    java)
        fetch_gitignore "java,maven,gradle"
        ;;
    go)
        fetch_gitignore "go"
        ;;
    php)
        fetch_gitignore "php,composer"
        ;;
    rust)
        fetch_gitignore "rust"
        ;;
    swift)
        fetch_gitignore "swift,xcode"
        ;;
    android)
        fetch_gitignore "android"
        ;;
    flutter)
        fetch_gitignore "flutter,dart"
        ;;
    dart)
        fetch_gitignore "dart"
        ;;
    "c++")
        fetch_gitignore "c++,cmake"
        ;;
    elixir)
        fetch_gitignore "elixir"
        ;;
    crystal)
        fetch_gitignore "crystal"
        ;;
    docker)
        fetch_gitignore "docker"
        ;;
    terraform)
        fetch_gitignore "terraform"
        ;;
    *)
        fetch_gitignore "macos,linux,windows"
        ;;
esac

echo "✅ .gitignore file created successfully at $GITIGNORE_FILE"
<div align="center">

# 🚀 Auto Gitignore Generation

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Powered by gitignore.io](https://img.shields.io/badge/Powered%20by-gitignore.io-blue.svg)](https://www.toptal.com/developers/gitignore)

> 🎯 **Perfect Gitignore Files in One Click!**

Never waste time crafting `.gitignore` files again! This smart tool automatically detects your project type and generates the perfect `.gitignore` file instantly. Whether you're working with Node.js, Python, Java, or any other framework - we've got you covered!

## 📸 See it in Action

<div align="center">

### 💻 CLI Usage

![CLI Demo](assets/cli-demo.gif)
*Auto-detects project type and generates perfect gitignore in seconds!*

### ✨ VS Code Integration

![VS Code Demo](assets/vscode-demo.gif)
*One-click gitignore generation right from your IDE!*

</div>

## ✨ One Command = Perfect Gitignore

```bash
~/bin/generate-gitignore.sh
```

## 🎮 Use in VS Code

</div>

## Features

- 🔍 Automatic project type detection
- 🎯 Supports multiple project types (Node.js, Python, Ruby, Java, Go, PHP, Rust, Swift, Android, Flutter, C++, and more)
- 🔄 Backs up existing `.gitignore` files
- ➕ Adds useful custom patterns
- 🛠️ VS Code Task Runner integration

## 💾 Quick Setup

1. **Install the Script**
   ```bash
   # Create bin directory if it doesn't exist
   mkdir -p ~/bin

   # Download the script
   curl -o ~/bin/generate-gitignore.sh https://raw.githubusercontent.com/Mdaftab/auto_gitignore_generation/main/generate-gitignore.sh
   
   # Make it executable
   chmod +x ~/bin/generate-gitignore.sh
   ```

2. **Configure Your IDE**

   ### VS Code Users

   1. Open Command Palette (`Cmd+Shift+P` on Mac, `Ctrl+Shift+P` on Windows/Linux)
   2. Type "Tasks: Open User Tasks" and select it
   3. Add this configuration to `tasks.json`:

   ```json
   {
       "version": "2.0.0",
       "tasks": [
           {
               "label": "Generate Gitignore",
               "type": "shell",
               "command": "~/bin/generate-gitignore.sh",
               "problemMatcher": [],
               "group": {
                   "kind": "build",
                   "isDefault": true
               }
           }
       ]
   }
   ```

   ### Cursor IDE Users

   1. Open Settings (`Cmd+,` on Mac, `Ctrl+,` on Windows/Linux)
   2. Search for "Task Runner"
   3. Click "Edit in settings.json"
   4. Add this configuration:

   ```json
   {
       "taskrunner.tasks": {
           "Generate Gitignore": {
               "command": "~/bin/generate-gitignore.sh",
               "type": "shell"
           }
       }
   }
   ```

## 🔧 Usage

### VS Code

1. Press `Cmd+Shift+B` (Mac) or `Ctrl+Shift+B` (Windows/Linux)
2. The script will automatically detect your project type and generate the perfect `.gitignore`

### Cursor IDE

1. Press `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows/Linux)
2. Type "Task Runner: Run Task"
3. Select "Generate Gitignore"

### Terminal

Run `~/bin/generate-gitignore.sh` in your terminal.

## Supported Project Types

- Node.js (package.json)
- Python (requirements.txt, setup.py, .venv, Pipfile)
- Ruby (Gemfile)
- Java (pom.xml, build.gradle)
- Go (go.mod)
- PHP (composer.json)
- Rust (Cargo.toml)
- Swift (Podfile, .xcodeproj)
- Android (AndroidManifest.xml)
- Flutter (pubspec.yaml with ios/android directories)
- Dart (pubspec.yaml)
- C++ (CMakeLists.txt, Makefile with src/include)
- Elixir (mix.exs)
- Crystal (shard.yml)
- Docker (Dockerfile, docker-compose.yml)
- Terraform (.terraform, .tf files)

If no specific project type is detected, it generates a basic gitignore with common patterns.

## Features

- Automatically detects project type based on files and directory structure
- Fetches appropriate templates from gitignore.io
- Includes OS-specific patterns (macOS, Linux, Windows)
- Adds common custom patterns (.DS_Store, .idea/, .vscode/, logs, etc.)
- Backs up existing .gitignore files before overwriting

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [gitignore.io](https://www.toptal.com/developers/gitignore) - Provides the API for fetching up-to-date gitignore templates
- [VS Code Task Runner](https://code.visualstudio.com/docs/editor/tasks) - For seamless IDE integration

## Author

**Md Aftab** - *Initial work*

---

<div align="center">
Made with ❤️ for developers who love clean repositories
</div>

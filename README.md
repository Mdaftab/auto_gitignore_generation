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

## Installation

1. Download the script:
   ```bash
   curl -o ~/bin/generate-gitignore.sh https://raw.githubusercontent.com/yourusername/auto_gitignore_generation/main/generate-gitignore.sh
   ```

2. Make it executable:
   ```bash
   chmod +x ~/bin/generate-gitignore.sh
   ```

## Usage

### Command Line
Navigate to your project directory and run:
```bash
~/bin/generate-gitignore.sh
```

### VS Code Integration

1. Open your project in VS Code
2. Create or open `.vscode/tasks.json`
3. Add the following configuration:
```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Generate Gitignore",
            "type": "shell",
            "command": "~/bin/generate-gitignore.sh",
            "problemMatcher": [],
            "presentation": {
                "reveal": "always",
                "panel": "new"
            }
        }
    ]
}
```

4. Run the task:
   - Press `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows/Linux)
   - Type "Tasks: Run Task"
   - Select "Generate Gitignore"

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

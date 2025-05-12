# 🚀 Auto Gitignore Generation

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This tool automatically creates a `.gitignore` file for your project. It detects your project type and adds common files and folders that should be ignored by Git.

## Features

*   **Automatic Detection:** Detects your project type (like Node.js, Python, Java, etc.).
*   **Wide Support:** Works with many programming languages and frameworks.
*   **Backup:** Saves your old `.gitignore` file before creating a new one.
*   **Custom Patterns:** Adds useful patterns like editor files (`.vscode/`, `.idea/`) and log files.
*   **IDE Integration:** Can be used with VS Code and Cursor IDE.

## See it in Action

### CLI Usage

![CLI Demo](assets/cli-demo.gif)

### VS Code Integration

![VS Code Demo](assets/vscode-demo.gif)

## How to Use

### Terminal

1.  **Install the Script:**
    ```bash
    mkdir -p ~/bin
    curl -o ~/bin/generate-gitignore.sh https://raw.githubusercontent.com/Mdaftab/auto_gitignore_generation/main/generate-gitignore.sh
    chmod +x ~/bin/generate-gitignore.sh
    ```
2.  **Run the Script:**
    ```bash
    ~/bin/generate-gitignore.sh
    ```

### VS Code / Cursor IDE

1.  **Install Task Runner:** Search for "Task Runner" in the extensions marketplace and install it.
2.  **Configure Task Runner:** Add a task to run the `~/bin/generate-gitignore.sh` script. (See the original README for detailed configuration steps if needed, but the script installation is the main part).
3.  **Run the Task:** Use the IDE's command palette or task runner shortcut to run the "Generate Gitignore" task.

## Supported Project Types

The script looks for specific files to detect your project type, such as:

*   `package.json` (Node.js)
*   `requirements.txt`, `setup.py`, `.venv`, `Pipfile` (Python)
*   `Gemfile` (Ruby)
*   `pom.xml`, `build.gradle` (Java)
*   `go.mod` (Go)
*   `composer.json` (PHP)
*   `Cargo.toml` (Rust)
*   And many more...

If no specific type is found, it creates a basic `.gitignore`.

## License

This project is under the MIT License. See the `LICENSE` file for details.

## Credits

Uses the gitignore templates from [gitignore.io](https://www.toptal.com/developers/gitignore).

## Author

Md Aftab

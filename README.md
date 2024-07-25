# Virtual Environment Activation Script

This repository contains a Windows batch script (`venv.bat`) that simplifies the process of activating a Python virtual environment (venv) in the current directory. If the virtual environment does not exist, the script will create it.

## Setup

Follow these steps to set up and use the `venv.bat` script:

### 1. Create the Batch File

Create a new file named `venv.bat` with the following content:

```batch
@echo off
if exist venv\Scripts\activate.bat (
    call venv\Scripts\activate.bat
    echo Virtual environment activated.
) else (
    echo No virtual environment found in the current directory.
    echo Creating a new virtual environment...
    python -m venv venv
    call venv\Scripts\activate.bat
    echo Virtual environment created and activated.
)
```

### 2. Save the File

Save the file with the `.bat` extension and place it in a directory that is included in your system's PATH environment variable (e.g., `C:\Windows` or a custom folder).

### 3. Add the Script Location to PATH (if necessary)

If you saved the script in a custom folder, add that folder to the PATH environment variable:

1. Open System Properties (Press `Win + Pause/Break` or right-click on This PC and select Properties).
2. Click on "Advanced system settings".
3. Click on "Environment Variables".
4. Under "System variables", find and select "Path", then click "Edit".
5. Click "New" and add the full path to the directory containing your `venv.bat` file.
6. Click "OK" to close all dialogs.

### 4. Ensure Python is Installed and Added to PATH

Make sure that Python is installed on your system and that its executable is added to the PATH environment variable. You can verify this by running `python --version` in a command prompt.

## Usage

To use the script, follow these steps:

1. Open a command prompt.
2. Navigate to the directory containing your Python project.
3. Type `venv` and press Enter.

The script will:

- Activate the virtual environment if it exists.
- Create a new virtual environment named `venv` if it doesn't exist, and then activate it.

## Notes

- The script assumes that your virtual environment is named `venv` and is located in the current directory. If you use a different naming convention, you may need to adjust the script accordingly.
- Ensure that you have Python installed and added to your system's PATH for this script to work properly.

## License

This project is licensed under the IDGAF License.

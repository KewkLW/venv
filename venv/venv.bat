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
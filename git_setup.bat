@echo off
echo STM32F405 AD7761 Project - Git Setup Helper
echo ==========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed or not in PATH
    echo Please install Git from https://git-scm.com/
    pause
    exit /b 1
)

echo Git is installed. Proceeding with setup...
echo.

REM Initialize git repository if not already done
if not exist ".git" (
    echo Initializing Git repository...
    git init
    echo.
)

REM Add all files
echo Adding files to Git...
git add .
echo.

REM Show status
echo Current Git status:
git status
echo.

echo Setup complete! 
echo.
echo Next steps:
echo 1. Create a new repository on GitHub.com
echo 2. Copy the repository URL (HTTPS or SSH)
echo 3. Run: git remote add origin [your-repository-url]
echo 4. Run: git commit -m "Initial commit: STM32F405 SPI master for AD7761 ADC"
echo 5. Run: git push -u origin main
echo.

pause

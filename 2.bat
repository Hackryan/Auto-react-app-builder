@echo off
REM Create a new directory for your React project
mkdir my-react-app

REM Change directory to the project folder
cd my-react-app

REM Initialize a new Node.js project
npm init -y

REM Install necessary dependencies
npm install react react-dom react-scripts

REM Create the project file tree
mkdir public src
cd public
echo.> index.html
echo.> favicon.ico
echo.> manifest.json
cd ../src
mkdir components pages
cd components
echo.> App.js
echo.> Header.js
echo.> Footer.js
REM Create other component files as needed
cd ../pages
echo.> Home.js
echo.> About.js
echo.> Contact.js
REM Create other page files as needed
cd ..
echo.> App.js
echo.> index.js
echo.> index.css

REM Create the configuration and control files
echo.> config.json
echo.> bot.js
echo.> render.yaml

REM Initialize a Git repository (if needed)
REM git init

REM Open the project folder in VSCode (if installed)
REM code .

REM Display a message
echo Project setup is complete. You can now start working on your React app.

REM Pause to keep the command prompt open
pause

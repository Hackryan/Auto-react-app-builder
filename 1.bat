@echo off
REM Script to create a basic React project structure with Telegram bot integration

REM Create the project directory
mkdir my-react-app
cd my-react-app

REM Initialize a new npm project
npm init -y

REM Install necessary dependencies
npm install react react-dom react-scripts

REM Create the public directory and basic HTML template
mkdir public
cd public
echo ^<html^> > index.html
echo ^<head^> >> index.html
echo   ^<title^>My React App^</title^> >> index.html
echo ^</head^> >> index.html
echo ^<body^> >> index.html
echo   ^<div id="root"^>^</div^> >> index.html
echo ^</body^> >> index.html
echo ^</html^> >> index.html
cd ..

REM Create the src directory and sample React components
mkdir src
cd src
mkdir components
mkdir pages
cd components
echo import React from 'react'; >> App.js
echo >> App.js
echo function App() { >> App.js
echo   return ( >> App.js
echo     ^<div^> >> App.js
echo       ^<h1^>Hello, React!^</h1^> >> App.js
echo     ^</div^> >> App.js
echo   ); >> App.js
echo } >> App.js
echo export default App; >> App.js
cd ..
cd pages
echo import React from 'react'; >> Home.js
echo >> Home.js
echo function Home() { >> Home.js
echo   return ( >> Home.js
echo     ^<div^> >> Home.js
echo       ^<h2^>Welcome to the Home Page^</h2^> >> Home.js
echo     ^</div^> >> Home.js
echo   ); >> Home.js
echo } >> Home.js
echo export default Home; >> Home.js
cd ..
cd ..

REM Create the src/App.js and src/index.js files
echo import React from 'react'; > App.js
echo import ReactDOM from 'react-dom'; >> App.js
echo import App from './components/App'; >> App.js
echo >> App.js
echo ReactDOM.render( >> App.js
echo   ^<React.StrictMode^> >> App.js
echo     ^<App /^> >> App.js
echo   ^</React.StrictMode^>, >> App.js
echo   document.getElementById('root') >> App.js
echo ); >> App.js

echo import React from 'react'; > index.js
echo import ReactDOM from 'react-dom'; >> index.js
echo import './index.css'; >> index.js
echo import App from './App'; >> index.js
echo >> index.js
echo ReactDOM.render( >> index.js
echo   ^<React.StrictMode^> >> index.js
echo     ^<App /^> >> index.js
echo   ^</React.StrictMode^>, >> index.js
echo   document.getElementById('root') >> index.js
echo ); >> index.js

REM Create the package.json file for npm scripts
echo { >> package.json
echo   "name": "my-react-app", >> package.json
echo   "version": "1.0.0", >> package.json
echo   "scripts": { >> package.json
echo     "start": "react-scripts start", >> package.json
echo     "build": "react-scripts build", >> package.json
echo     "test": "react-scripts test", >> package.json
echo     "eject": "react-scripts eject" >> package.json
echo   }, >> package.json
echo   "dependencies": { >> package.json
echo     "react": "^17.0.2", >> package.json
echo     "react-dom": "^17.0.2", >> package.json
echo     "react-scripts": "4.0.3" >> package.json
echo   } >> package.json
echo } >> package.json

REM Create a render.yaml file for Render.com configuration
echo version: 1 >> render.yaml
echo buildCommand: ^| >> render.yaml
echo   npm install >> render.yaml
echo   npm run build >> render.yaml
echo buildDirectory: build >> render.yaml
echo staticPublishPath: build >> render.yaml

REM Display instructions for Telegram bot setup
echo. 
echo Your project structure is ready. Now, you can set up your Telegram bot and integrate it into your React app.
echo Here are the steps:
echo 1. Create a Telegram bot and get the API token.
echo 2. Update your React app to send and receive messages using the Telegram Bot API.
echo 3. Configure the bot's API token and other credentials in your app.
echo.

REM Exit the script
exit

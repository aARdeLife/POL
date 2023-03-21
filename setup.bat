@echo off
echo Installing prerequisites...
call npm install -g http-server
call npm install -g git
call git --version
echo Cloning your GitHub repository...
call git clone https://github.com/aARdeLife/POL.git
cd your-repo-name
echo Creating required files and folders...
call echo.> index.html
call echo.> style.css
call echo.> script.js
mkdir models
echo Adding content to index.html, style.css, and script.js files...
call echo ^<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs"^>^</script^> > index.html
call echo ^<script src="https://cdn.jsdelivr.net/npm/@tensorflow-models/coco-ssd"^>^</script^> >> index.html
call echo ^<link rel="stylesheet" href="style.css"^> >> index.html
call echo ^<script src="script.js"^>^</script^> >> index.html
call echo ^<video id="video"^>^</video^> >> index.html
echo Starting the web server...
call http-server

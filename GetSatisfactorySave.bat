@echo off
echo Downloading latest Satisfactory save...

set DEST=%USERPROFILE%\Downloads\latest.sav

curl -L -o "%DEST%" "https://raw.githubusercontent.com/brueske/satisfactoryserver/main/latest.sav"

if %ERRORLEVEL% == 0 (
    echo.
    echo Success! Save file downloaded to:
    echo %DEST%
) else (
    echo.
    echo Something went wrong. Make sure you have internet access.
)

pause

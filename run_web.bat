@echo off
title ShopSphere - Web Server
echo.
echo  Building ShopSphere...
call mvn -q package -DskipTests
if %ERRORLEVEL% neq 0 (
    echo  Build failed. Run "mvn package" for details.
    pause
    exit /b 1
)
echo  Starting ShopSphere Web Server...
echo  Open your browser at: http://localhost:8080
echo.
java -jar shopsphere.jar web
pause

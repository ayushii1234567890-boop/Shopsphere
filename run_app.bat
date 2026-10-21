@echo off
title ShopSphere - Console App
echo.
echo  Building ShopSphere...
call mvn -q package -DskipTests
if %ERRORLEVEL% neq 0 (
    echo  Build failed. Run "mvn package" for details.
    pause
    exit /b 1
)
echo  Starting ShopSphere Console...
echo.
java -jar shopsphere.jar console
pause

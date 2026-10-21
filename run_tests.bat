@echo off
title ShopSphere - Tests
echo.
echo  Running ShopSphere Tests...
echo.
call mvn test
if %ERRORLEVEL% equ 0 (
    echo.
    echo  All tests passed!
) else (
    echo.
    echo  Some tests failed. Check output above.
)
pause

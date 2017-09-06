@echo off
echo.
echo.   Installing files to "%HOME%" folder
echo.
if not defined HOME goto :Homeless
xcopy /v home\*.*  %HOME%
goto :eof

:Homeless
    echo.
    echo.   HOME variable not defined
    echo.
    goto :eof
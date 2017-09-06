@echo off
@echo.  Loading %~dpnx0
:: https://stackoverflow.com/questions/20530996/aliases-in-windows-command-prompt/


:: Aliases, https://ss64.com/nt/doskey.html
doskey /reinstall
doskey macros=doskey /macros
doskey ed=notepad.exe $*
doskey ed-env=notepad D:\b\\env.cmd

doskey ls=dir /B

:: GDAL/OGR
:: https://gis.stackexchange.com/questions/254380/set-default-gdal-ogr-config-options/
doskey gdal-overs="gdaladdo -r gauss --config PHOTOMETRIC_OVERVIEW=YCBCR --config INTERLEAVE_OVERVIEW PIXEL --config COMPRESS_OVERVIEW=JPEG --config JPEG_QUALITY_OVERVIEW=85" $*

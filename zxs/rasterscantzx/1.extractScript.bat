@echo off
set T_FILENAME="Raster Scan.tzx"
set SCRIPTNAME="rasterscantzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

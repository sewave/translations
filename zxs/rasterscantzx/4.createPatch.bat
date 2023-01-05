@echo off
set T_FILENAME="TR_Raster Scan.tzx"
set S_FILENAME="Raster Scan.tzx"
set SCRIPTNAME="rasterscantzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Side Arms - Hyper Dyne (U).pce"
set S_FILENAME="Side Arms - Hyper Dyne (U).pce"
set SCRIPTNAME="sidearmshyperdynepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

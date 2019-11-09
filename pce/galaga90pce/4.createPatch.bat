@echo off
set T_FILENAME="TR_Galaga '90 (U).pce"
set S_FILENAME="Galaga '90 (U).pce"
set SCRIPTNAME="galaga90pce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

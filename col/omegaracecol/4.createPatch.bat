@echo off
set T_FILENAME="TR_Omega Race (1981-83) (Midway).col"
set S_FILENAME="Omega Race (1981-83) (Midway).col"
set SCRIPTNAME="omegaracecol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

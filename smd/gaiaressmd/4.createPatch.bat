@echo off
set T_FILENAME="TR_Gaiares (Japan, USA).md"
set S_FILENAME="Gaiares (Japan, USA).md"
set SCRIPTNAME="gaiaressmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

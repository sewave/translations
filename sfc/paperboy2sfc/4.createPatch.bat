@echo off
set T_FILENAME="TR_Paperboy 2 (USA).sfc"
set S_FILENAME="Paperboy 2 (USA).sfc"
set SCRIPTNAME="paperboy2sfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Riddick Bowe Boxing (USA).gg"
set S_FILENAME="Riddick Bowe Boxing (USA).gg"
set SCRIPTNAME="riddickboweboxinggg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

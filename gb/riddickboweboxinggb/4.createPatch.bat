@echo off
set T_FILENAME="TR_Riddick Bowe Boxing (USA).gb"
set S_FILENAME="Riddick Bowe Boxing (USA).gb"
set SCRIPTNAME="riddickboweboxinggb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

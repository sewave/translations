@echo off
set T_FILENAME="TR_Day Dreamin' Davey (USA).nes"
set S_FILENAME="Day Dreamin' Davey (USA).nes"
set SCRIPTNAME="daydreamindaveynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

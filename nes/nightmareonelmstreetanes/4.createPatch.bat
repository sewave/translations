@echo off
set T_FILENAME="TR_Nightmare on Elm Street, A (USA).nes"
set S_FILENAME="Nightmare on Elm Street, A (USA).nes"
set SCRIPTNAME="nightmareonelmstreetanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Pin Bot (USA).nes"
set S_FILENAME="Pin Bot (USA).nes"
set SCRIPTNAME="pinbotnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

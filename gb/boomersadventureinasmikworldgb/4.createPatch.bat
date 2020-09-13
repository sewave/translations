@echo off
set T_FILENAME="TR_Boomer's Adventure in ASMIK World (USA).gb"
set S_FILENAME="Boomer's Adventure in ASMIK World (USA).gb"
set SCRIPTNAME="boomersadventureinasmikworldgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

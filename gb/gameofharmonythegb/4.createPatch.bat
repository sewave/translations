@echo off
set T_FILENAME="TR_Game of Harmony, The (U).gb"
set S_FILENAME="Game of Harmony, The (U).gb"
set SCRIPTNAME="gameofharmonythegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

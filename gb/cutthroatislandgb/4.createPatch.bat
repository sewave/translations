@echo off
set T_FILENAME="TR_Cutthroat Island (U).gb"
set S_FILENAME="Cutthroat Island (U).gb"
set SCRIPTNAME="cutthroatislandgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

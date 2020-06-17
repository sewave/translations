@echo off
set T_FILENAME="TR_Super Return of the Jedi (U) [!].gg"
set S_FILENAME="Super Return of the Jedi (U) [!].gg"
set SCRIPTNAME="superreturnofthejedigg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

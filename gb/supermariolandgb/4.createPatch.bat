@echo off
set T_FILENAME="TR_Super Mario Land (World) (Rev A).gb"
set S_FILENAME="Super Mario Land (World) (Rev A).gb"
set SCRIPTNAME="supermariolandgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

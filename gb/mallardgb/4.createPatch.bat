@echo off
set T_FILENAME="TR_Sam Mallard - The Case of the Missing Swan (World) (SGB Enhanced) (Aftermarket) (Unl).gb"
set S_FILENAME="Sam Mallard - The Case of the Missing Swan (World) (SGB Enhanced) (Aftermarket) (Unl).gb"
set SCRIPTNAME="mallardgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

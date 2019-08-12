@echo off
set T_FILENAME="TR_Super Smash TV (UE) [!].bin"
set S_FILENAME="Super Smash TV (UE) [!].bin"
set SCRIPTNAME="supersmashtvsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

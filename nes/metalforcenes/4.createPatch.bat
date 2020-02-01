@echo off
set T_FILENAME="TR_Metal Force (Korea) (Unl).nes"
set S_FILENAME="Metal Force (Korea) (Unl).nes"
set SCRIPTNAME="metalforcenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

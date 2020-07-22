@echo off
set T_FILENAME="TR_Choplifter II - Rescue & Survive (USA).gb"
set S_FILENAME="Choplifter II - Rescue & Survive (USA).gb"
set SCRIPTNAME="choplifteriirescuesurvivegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

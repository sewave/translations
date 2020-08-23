@echo off
set T_FILENAME="TR_Bio Force Ape (Japan) (En) (Proto).nes"
set S_FILENAME="Bio Force Ape (Japan) (En) (Proto).nes"
set SCRIPTNAME="bioforceapenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

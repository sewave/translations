@echo off
set T_FILENAME="TR_Monster in My Pocket (USA).nes"
set S_FILENAME="Monster in My Pocket (USA).nes"
set SCRIPTNAME="monsterinmypocketnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

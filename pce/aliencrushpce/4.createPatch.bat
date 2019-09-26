@echo off
set T_FILENAME="TR_Alien Crush (U).pce"
set S_FILENAME="Alien Crush (U).pce"
set SCRIPTNAME="aliencrushpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

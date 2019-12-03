@echo off
set T_FILENAME="TR_Splatterhouse (U).pce"
set S_FILENAME="Splatterhouse (U).pce"
set SCRIPTNAME="splatterhousepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

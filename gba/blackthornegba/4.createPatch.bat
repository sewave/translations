@echo off
set T_FILENAME="TR_Blackthorne (USA).gba"
set S_FILENAME="Blackthorne (USA).gba"
set SCRIPTNAME="blackthornegba"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

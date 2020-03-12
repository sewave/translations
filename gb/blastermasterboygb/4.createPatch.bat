@echo off
set T_FILENAME="TR_Blaster Master Boy (U).gb"
set S_FILENAME="Blaster Master Boy (U).gb"
set SCRIPTNAME="blastermasterboygb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

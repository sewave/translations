@echo off
set T_FILENAME="TR_Parodius - Non-Sense Fantasy (E).smc"
set S_FILENAME="Parodius - Non-Sense Fantasy (E).smc"
set SCRIPTNAME="parodiusnonsensefantasysfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

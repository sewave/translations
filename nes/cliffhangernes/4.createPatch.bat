@echo off
set T_FILENAME="TR_Cliffhanger (USA).nes"
set S_FILENAME="Cliffhanger (USA).nes"
set SCRIPTNAME="cliffhangernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

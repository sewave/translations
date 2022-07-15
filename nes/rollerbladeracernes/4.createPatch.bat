@echo off
set T_FILENAME="TR_Rollerblade Racer (USA).nes"
set S_FILENAME="Rollerblade Racer (USA).nes"
set SCRIPTNAME="rollerbladeracernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Probotector (Europe).nes"
set S_FILENAME="Probotector (Europe).nes"
set SCRIPTNAME="probotectornes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Probotector II - Return of the Evil Forces (Europe).nes"
set S_FILENAME="Probotector II - Return of the Evil Forces (Europe).nes"
set SCRIPTNAME="probotectoriireturnoftheevilforcesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

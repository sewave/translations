@echo off
set T_FILENAME="TR_Impossamole (U).pce"
set S_FILENAME="Impossamole (U).pce"
set SCRIPTNAME="impossamolepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

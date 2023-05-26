@echo off
set T_FILENAME="TR_Super Ted - The Search For Spot.tzx"
set S_FILENAME="Super Ted - The Search For Spot.tzx"
set SCRIPTNAME="supertedthesearchforspottzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

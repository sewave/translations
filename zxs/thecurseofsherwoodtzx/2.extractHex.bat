@echo off
set T_FILENAME="TR_The Curse Of Sherwood.tzx"
set SCRIPTNAME="thecurseofsherwoodtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

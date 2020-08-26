@echo off
set T_FILENAME="Toxic Crusaders (U).gb"
set SCRIPTNAME="toxiccrusadersgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

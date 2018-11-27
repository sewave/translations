@echo off
set T_FILENAME="Toxic Crusaders (U) [!].bin"
set SCRIPTNAME="toxiccrusaderssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

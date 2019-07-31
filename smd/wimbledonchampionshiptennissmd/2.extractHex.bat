@echo off
set T_FILENAME="TR_Wimbledon Championship Tennis (USA).md"
set SCRIPTNAME="wimbledonchampionshiptennissmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

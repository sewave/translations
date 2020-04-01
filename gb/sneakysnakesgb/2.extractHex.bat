@echo off
set T_FILENAME="TR_Sneaky Snakes (UE) [!].gb"
set SCRIPTNAME="sneakysnakesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

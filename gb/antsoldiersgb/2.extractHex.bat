@echo off
set T_FILENAME="TR_Ant Soldiers (Sachen) [!].gb"
set SCRIPTNAME="antsoldiersgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

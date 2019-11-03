@echo off
set T_FILENAME="TR_Star Force (SG-1000) [!].sg"
set SCRIPTNAME="starforcesg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="TR_Rambo - First Blood Part 2 (U) [!].sms"
set SCRIPTNAME="rambopart2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

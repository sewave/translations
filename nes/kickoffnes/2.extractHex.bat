@echo off
set T_FILENAME="TR_Kick Off (Europe).nes"
set SCRIPTNAME="kickoffnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

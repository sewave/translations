@echo off
set T_FILENAME="TR_Probotector II - Return of the Evil Forces (Europe).nes"
set SCRIPTNAME="probotectoriireturnoftheevilforcesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

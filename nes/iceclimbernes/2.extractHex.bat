@echo off
set T_FILENAME="TR_Ice Climber (U) [!].nes"
set SCRIPTNAME="iceclimbernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 53F0:40,5950:10,5A40:10,5800:30
pause

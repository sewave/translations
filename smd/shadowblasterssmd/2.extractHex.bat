@echo off
set T_FILENAME="TR_Shadow Blasters (U) [c][!].bin"
set SCRIPTNAME="shadowblasterssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

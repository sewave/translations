@echo off
set T_FILENAME="TR_Super Tank (SG-1000) [!].sg"
set SCRIPTNAME="supertanksg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

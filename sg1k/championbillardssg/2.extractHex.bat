@echo off
set T_FILENAME="TR_Champion Billards (SG-1000) [!].sg"
set SCRIPTNAME="championbillardssg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

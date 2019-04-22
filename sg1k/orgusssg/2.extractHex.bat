@echo off
set T_FILENAME="TR_Orguss (SG-1000).sg"
set SCRIPTNAME="orgusssg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 59D9:10
pause

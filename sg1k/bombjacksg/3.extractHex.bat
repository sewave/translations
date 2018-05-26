@echo off
set T_FILENAME="TR_Bomb Jack (SG-1000).sg"
set SCRIPTNAME="bombjacksg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22C4-2344,239C:8
pause

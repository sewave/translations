@echo off
set T_FILENAME="TR_Maze Hunter 3D (U) [!].sms"
set SCRIPTNAME="mazehunter3dsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

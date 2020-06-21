@echo off
set T_FILENAME="Maze Hunter 3D (U) [!].sms"
set SCRIPTNAME="mazehunter3dsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

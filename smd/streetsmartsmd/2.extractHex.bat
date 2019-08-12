@echo off
set T_FILENAME="TR_Street Smart (JU) [!].bin"
set SCRIPTNAME="streetsmartsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 300E0:80,34AC0:20
pause

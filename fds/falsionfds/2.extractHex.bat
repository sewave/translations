@echo off
set T_FILENAME="TR_Falsion (Japan).fds"
set SCRIPTNAME="falsionfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 564E:10
pause

@echo off
set T_FILENAME="TR_Meikyuu Jiin Dababa (Japan).fds"
set SCRIPTNAME="meikyuujiindababafds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1404:10,
pause

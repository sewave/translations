@echo off
set T_FILENAME="TR_Die Alien Slime.tzx"
set SCRIPTNAME="diealienslimetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10CD:60
pause

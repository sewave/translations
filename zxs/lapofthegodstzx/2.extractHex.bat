@echo off
set T_FILENAME="TR_Lap Of The Gods.tzx"
set SCRIPTNAME="lapofthegodstzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6037:20
pause

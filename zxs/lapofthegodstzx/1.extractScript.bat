@echo off
set T_FILENAME="Lap Of The Gods.tzx"
set SCRIPTNAME="lapofthegodstzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

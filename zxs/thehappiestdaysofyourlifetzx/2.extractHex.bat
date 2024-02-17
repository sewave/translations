@echo off
set T_FILENAME="TR_The Happiest Days Of Your Life.tzx"
set SCRIPTNAME="thehappiestdaysofyourlifetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8ABB:8
pause

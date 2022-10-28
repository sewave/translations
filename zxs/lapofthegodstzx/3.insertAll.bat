@echo off
set T_FILENAME="TR_Lap Of The Gods.tzx"
set S_FILENAME="Lap Of The Gods.tzx"
set SCRIPTNAME="lapofthegodstzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause

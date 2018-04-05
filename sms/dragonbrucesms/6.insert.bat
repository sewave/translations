@echo off
set T_FILENAME="TR_Dragon - The Bruce Lee Story (E) [!].sms"
set S_FILENAME="Dragon - The Bruce Lee Story (E) [!].sms"
set SCRIPTNAME="dragonbrucesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

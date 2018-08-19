@echo off
set T_FILENAME="TR_Wonder Boy in Monster World (E) [!].sms"
set S_FILENAME="Wonder Boy in Monster World (E) [!].sms"
set SCRIPTNAME="wonderboyinmonsterworldsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl tr_%SCRIPTNAME%Title.ext %T_FILENAME%
pause

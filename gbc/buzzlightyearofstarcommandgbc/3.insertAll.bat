@echo off
set T_FILENAME="TR_Buzz Lightyear of Star Command (USA, Europe).gbc"
set S_FILENAME="Buzz Lightyear of Star Command (USA, Europe).gbc"
set SCRIPTNAME="buzzlightyearofstarcommandgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause

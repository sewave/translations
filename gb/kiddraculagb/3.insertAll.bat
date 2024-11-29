@echo off
set T_FILENAME="TR_Kid Dracula (USA, Europe).gb"
set S_FILENAME="Kid Dracula (USA, Europe).gb"
set SCRIPTNAME="kiddraculagb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
REM java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%Clean.ext
java -jar Hextractor.jar -fcg %T_FILENAME%
pause

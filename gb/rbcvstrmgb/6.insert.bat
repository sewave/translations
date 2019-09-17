@echo off
set T_FILENAME="TR_RoboCop Vs. The Terminator (U) [!].gb"
set S_FILENAME="RoboCop Vs. The Terminator (U) [!].gb"
set SCRIPTNAME="rbcvstrmgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause

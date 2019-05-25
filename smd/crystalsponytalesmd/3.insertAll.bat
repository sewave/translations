@echo off
set T_FILENAME="TR_Crystal's Pony Tale (U) [!].bin"
set S_FILENAME="Crystal's Pony Tale (U) [!].bin"
set SCRIPTNAME="crystalsponytalesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause

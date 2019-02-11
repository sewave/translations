@echo off
set T_FILENAME="TR_Turrican (U) [c][!].gen"
set S_FILENAME="Turrican (U) [c][!].gen"
set SCRIPTNAME="turricansmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause

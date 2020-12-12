@echo off
set T_FILENAME="TR_Tempo (Japan, USA).32x"
set S_FILENAME="Tempo (Japan, USA).32x"
set SCRIPTNAME="tempo32x"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause

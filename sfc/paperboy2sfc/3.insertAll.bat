@echo off
set T_FILENAME="TR_Paperboy 2 (USA).sfc"
set S_FILENAME="Paperboy 2 (USA).sfc"
set SCRIPTNAME="paperboy2sfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause

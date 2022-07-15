@echo off
set T_FILENAME="TR_Terminator 2 - Judgment Day (USA).nes"
set S_FILENAME="Terminator 2 - Judgment Day (USA).nes"
set SCRIPTNAME="terminator2judgmentdaynes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

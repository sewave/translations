@echo off
set T_FILENAME="TR_Darius Plus (J) (SGX).pce"
set S_FILENAME="Darius Plus (J) (SGX).pce"
set SCRIPTNAME="dariuspluspce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

@echo off
set T_FILENAME="TR_Tasac (Asia) (Ja) (Unl).nes"
set S_FILENAME="Tasac (Asia) (Ja) (Unl).nes"
set SCRIPTNAME="tasacnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

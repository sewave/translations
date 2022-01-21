@echo off
set T_FILENAME="TR_Menace Beach (USA) (Unl).nes"
set S_FILENAME="Menace Beach (USA) (Unl).nes"
set SCRIPTNAME="menacebeachnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

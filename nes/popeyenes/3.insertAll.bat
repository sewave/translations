@echo off
set T_FILENAME="TR_Popeye (W) (PRG1) [!].nes"
set S_FILENAME="Popeye (W) (PRG1) [!].nes"
set SCRIPTNAME="popeyenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

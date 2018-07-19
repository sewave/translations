@echo off
set T_FILENAME="TR_TwinBee (J) [!].nes"
set S_FILENAME="TwinBee (J) [!].nes"
set SCRIPTNAME="twinbeenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

@echo off
set T_FILENAME="TR_Gun-Nac (J) [T+ENG].nes"
set S_FILENAME="Gun-Nac (J) [T+ENG].nes"
set SCRIPTNAME="gunnacjnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

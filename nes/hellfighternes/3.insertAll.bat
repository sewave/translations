@echo off
set T_FILENAME="TR_Hell Fighter (Asia) (PAL) (Unl).nes"
set S_FILENAME="Hell Fighter (Asia) (PAL) (Unl).nes"
set SCRIPTNAME="hellfighternes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

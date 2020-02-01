@echo off
set T_FILENAME="TR_Metal Force (Korea) (Unl).nes"
set S_FILENAME="Metal Force (Korea) (Unl).nes"
set SCRIPTNAME="metalforcenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

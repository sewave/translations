@echo off
set T_FILENAME="TR_Pooyan (J).nes"
set S_FILENAME="Pooyan (J).nes"
set SCRIPTNAME="pooyannes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

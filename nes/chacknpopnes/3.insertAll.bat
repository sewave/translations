@echo off
set T_FILENAME="TR_Chack 'n Pop (J).nes"
set S_FILENAME="Chack 'n Pop (J).nes"
set SCRIPTNAME="chacknpopnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

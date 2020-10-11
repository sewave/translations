@echo off
set T_FILENAME="TR_Heavy Shreddin' (USA).nes"
set S_FILENAME="Heavy Shreddin' (USA).nes"
set SCRIPTNAME="heavyshreddinnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

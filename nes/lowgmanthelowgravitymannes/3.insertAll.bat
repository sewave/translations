@echo off
set T_FILENAME="TR_Low G Man - The Low Gravity Man (USA).nes"
set S_FILENAME="Low G Man - The Low Gravity Man (USA).nes"
set SCRIPTNAME="lowgmanthelowgravitymannes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause

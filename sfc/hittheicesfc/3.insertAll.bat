@echo off
set T_FILENAME="TR_Hit the Ice - VHL - The Official Video Hockey League (USA).sfc"
set S_FILENAME="Hit the Ice - VHL - The Official Video Hockey League (USA).sfc"
set SCRIPTNAME="hittheicesfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause

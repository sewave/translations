@echo off
set T_FILENAME="TR_Daze Before Christmas (E).smc"
set S_FILENAME="Daze Before Christmas (E).smc"
set SCRIPTNAME="dazebeforechristmassfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause

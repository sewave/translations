@echo off
set T_FILENAME="TR_Double Dragon V - The Shadow Falls (U).smc"
set S_FILENAME="Double Dragon V - The Shadow Falls (U).smc"
set SCRIPTNAME="doubledragonvtheshadowfallssfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause

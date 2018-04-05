@echo off
set T_FILENAME="Double Dragon V - The Shadow Falls (U).smc"
set SCRIPTNAME="doubledragonvtheshadowfallssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Double Dragon V - The Shadow Falls (U) [!].gen"
set SCRIPTNAME="doubledragonvtheshadowfallssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

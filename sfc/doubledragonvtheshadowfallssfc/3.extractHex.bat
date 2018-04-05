@echo off
set T_FILENAME="TR_Double Dragon V - The Shadow Falls (U).smc"
set SCRIPTNAME="doubledragonvtheshadowfallssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

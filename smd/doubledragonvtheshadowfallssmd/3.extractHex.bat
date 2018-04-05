@echo off
set T_FILENAME="TR_Double Dragon V - The Shadow Falls (U) [!].gen"
set SCRIPTNAME="doubledragonvtheshadowfallssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

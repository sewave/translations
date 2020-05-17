@echo off
set T_FILENAME="TR_Waterworld (Beta).gen"
set SCRIPTNAME="waterworldsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

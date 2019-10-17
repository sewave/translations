@echo off
set T_FILENAME="TR_Super Mario World (U) [!].smc"
set SCRIPTNAME="supermarioworldsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

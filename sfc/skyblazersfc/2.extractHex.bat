@echo off
set T_FILENAME="TR_Sky Blazer (U) [!].smc"
set SCRIPTNAME="skyblazersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 72940:100
pause

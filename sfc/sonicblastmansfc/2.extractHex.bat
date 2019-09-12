@echo off
set T_FILENAME="TR_Sonic Blast Man (U) [!].smc"
set SCRIPTNAME="sonicblastmansfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 804CC:400
pause

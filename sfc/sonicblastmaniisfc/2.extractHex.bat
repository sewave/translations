@echo off
set T_FILENAME="TR_Sonic Blast Man II (U).smc"
set SCRIPTNAME="sonicblastmaniisfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16FD17:10,16FDF7:30
pause

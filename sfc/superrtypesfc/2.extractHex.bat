@echo off
set T_FILENAME="TR_Super R-Type (U) [!].smc"
set SCRIPTNAME="superrtypesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2A100:400,2A900:200,2A5F0:10,2A8E0:10,2A530:80,2AC00:100,2B100:200,29D20:10,2AD00:100,2A870:10
pause

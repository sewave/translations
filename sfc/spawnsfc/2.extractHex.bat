@echo off
set T_FILENAME="TR_Spawn (U) [!].smc"
set SCRIPTNAME="spawnsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B6010:50,B6AA0:60,B6BA0:60,
pause

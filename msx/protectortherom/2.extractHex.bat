@echo off
set T_FILENAME="TR_Protector, The (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="protectortherom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3CE0:8
pause

@echo off
set T_FILENAME="TR_Bank Panic (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="bankpanicrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4000:80
pause

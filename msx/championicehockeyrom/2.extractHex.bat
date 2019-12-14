@echo off
set T_FILENAME="TR_Champion Ice Hockey (1986) (Pony Cannon) (J).rom"
set SCRIPTNAME="championicehockeyrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

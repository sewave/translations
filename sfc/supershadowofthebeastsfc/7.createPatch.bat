@echo off
set T_FILENAME="TR_Super Shadow of the Beast (U).smc"
set S_FILENAME="Super Shadow of the Beast (U).smc"
set SCRIPTNAME="supershadowofthebeastsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

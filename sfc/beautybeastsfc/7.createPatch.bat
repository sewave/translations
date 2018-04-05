@echo off
set T_FILENAME="TR_Beauty and the Beast (U).smc"
set S_FILENAME="Beauty and the Beast (U).smc"
set SCRIPTNAME="beautybeastsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

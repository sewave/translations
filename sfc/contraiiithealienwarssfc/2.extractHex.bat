@echo off
set T_FILENAME="TR_Contra III - The Alien Wars (USA).sfc"
set SCRIPTNAME="contraiiithealienwarssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

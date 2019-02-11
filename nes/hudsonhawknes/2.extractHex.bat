@echo off
set T_FILENAME="TR_Hudson Hawk (U) [!].nes"
set SCRIPTNAME="hudsonhawknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36690:20,36B10:80
pause

@echo off
set T_FILENAME="TR_Kolibri (USA, Europe).32x"
set SCRIPTNAME="kolibri32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

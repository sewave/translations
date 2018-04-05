@echo off
set T_FILENAME="TR_Twin Cobra (U) [!].bin"
set SCRIPTNAME="twincobra"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

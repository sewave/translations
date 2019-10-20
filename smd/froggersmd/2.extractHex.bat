@echo off
set T_FILENAME="TR_Frogger (U) [!].bin"
set SCRIPTNAME="froggersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

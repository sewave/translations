@echo off
set T_FILENAME="TR_Hellfire (U) [!].bin"
set SCRIPTNAME="hellfiresmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

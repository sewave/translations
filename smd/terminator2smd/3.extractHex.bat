@echo off
set T_FILENAME="TR_Terminator 2 - Judgment Day (UE) [!].bin"
set SCRIPTNAME="terminator2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

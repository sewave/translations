@echo off
set T_FILENAME="TR_Herzog Zwei (UE) [!].bin"
set SCRIPTNAME="herzogzweismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

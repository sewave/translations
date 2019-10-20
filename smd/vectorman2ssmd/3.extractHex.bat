@echo off
set T_FILENAME="TR_Vectorman 2 (U) [!].bin"
set SCRIPTNAME="vectorman2ssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 140000:C00
pause

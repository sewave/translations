@echo off
set T_FILENAME="TR_Flintstones, The (U) [c][!].bin"
set SCRIPTNAME="flintstonesthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

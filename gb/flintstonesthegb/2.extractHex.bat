@echo off
set T_FILENAME="TR_Flintstones, The (U) [!].gb"
set SCRIPTNAME="flintstonesthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

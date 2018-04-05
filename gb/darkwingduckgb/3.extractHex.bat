@echo off
set T_FILENAME="TR_Darkwing Duck (U) [!].gb"
set SCRIPTNAME="darkwingduckgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

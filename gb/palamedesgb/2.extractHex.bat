@echo off
set T_FILENAME="TR_Palamedes (UE) [!].gb"
set SCRIPTNAME="palamedesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

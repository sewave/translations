@echo off 
set T_FILENAME="TR_Air Diver (U) [!].bin"
set SCRIPTNAME="airdiversmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 

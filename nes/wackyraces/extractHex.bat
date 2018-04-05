@echo off 
set T_FILENAME="TR_Wacky Races (U) [!].nes"
set SCRIPTNAME="wackyraces"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 004604:9,004612:B1,3B021-3B98F


pause 

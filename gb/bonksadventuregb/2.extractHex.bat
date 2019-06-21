@echo off
set T_FILENAME="TR_Bonk's Adventure (U) [!].gb"
set SCRIPTNAME="bonksadventuregb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

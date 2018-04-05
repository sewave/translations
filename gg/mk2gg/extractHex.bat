@echo off 
set T_FILENAME="TR_Mortal Kombat II (U) [!].gg"
set SCRIPTNAME="mk2gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 

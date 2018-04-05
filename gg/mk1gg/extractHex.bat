@echo off 
set T_FILENAME="TR_Mortal Kombat (U) [!].gg"
set SCRIPTNAME="mk1gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 

@echo off 
set T_FILENAME="TR_Mortal Kombat 3 (U) [!].gg"
set SCRIPTNAME="mk3gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 

@echo off
set T_FILENAME="TR_Jungle Book, The (U) [!].nes"
set SCRIPTNAME="junglebooknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

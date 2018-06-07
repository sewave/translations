@echo off
set T_FILENAME="TR_Jungle Book, The (U) [!].gb"
set SCRIPTNAME="junglebookgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

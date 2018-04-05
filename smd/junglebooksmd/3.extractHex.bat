@echo off
set T_FILENAME="TR_Jungle Book, The (U) [!].bin"
set SCRIPTNAME="junglebooksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="TR_Jungle Book, The (U) (Mar 1994) [!].gg"
set SCRIPTNAME="junglebookgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="TR_Beauty and the Beast - Belle's Quest (U) [!].bin"
set SCRIPTNAME="beautybeastbelle"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

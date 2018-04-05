@echo off
set T_FILENAME="TR_Beauty and the Beast - Roar of the Beast (U) [!].bin"
set SCRIPTNAME="beautybeastroarsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

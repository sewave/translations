@echo off
set T_FILENAME="TR_Jurassic Park 2 - The Lost World (U) [!].bin"
set SCRIPTNAME="jurassicpark2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

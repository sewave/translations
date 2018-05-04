@echo off
set T_FILENAME="TR_Amazing Spider-Man 2, The (UE) [!].gb"
set SCRIPTNAME="amazingspiderman2thegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

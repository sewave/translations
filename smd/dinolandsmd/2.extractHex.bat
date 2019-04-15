@echo off
set T_FILENAME="TR_Dino Land (U) [!].bin"
set SCRIPTNAME="dinolandsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

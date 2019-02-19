@echo off
set T_FILENAME="TR_Hokuto no Ken 3 - Shin Seiki Souzou Seiken Restuden (J) [!].nes"
set SCRIPTNAME="hokutonoken3shinseikisouzouseikenrestudennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10010-10810,33AE0:10
pause

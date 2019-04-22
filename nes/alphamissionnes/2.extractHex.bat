@echo off
set T_FILENAME="TR_Alpha Mission (U) [!].nes"
set SCRIPTNAME="alphamissionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9490:100,9010:100,95C0:80
pause

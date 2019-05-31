@echo off
set T_FILENAME="TR_Gyromite (W) [!].nes"
set SCRIPTNAME="gyromitenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 99B0:140,9BB0:10,9C90:40
pause

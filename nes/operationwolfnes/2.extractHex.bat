@echo off
set T_FILENAME="TR_Operation Wolf (U) [!].nes"
set SCRIPTNAME="operationwolfnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21090:100,20520:10,205E0:10,21950:60,20BE0:10,30F10:40,31F10:40,32F10:40,33F10:40
pause

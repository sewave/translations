@echo off
set T_FILENAME="TR_Aladdin (E) [!].nes"
set SCRIPTNAME="aladdinnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

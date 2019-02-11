@echo off
set T_FILENAME="TR_Rod Land (E) [!].nes"
set SCRIPTNAME="rodlandnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

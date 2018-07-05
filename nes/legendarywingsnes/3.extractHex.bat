@echo off
set T_FILENAME="TR_Legendary Wings (U) [!].nes"
set SCRIPTNAME="legendarywingsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

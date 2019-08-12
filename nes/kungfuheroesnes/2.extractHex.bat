@echo off
set T_FILENAME="TR_Kung-Fu Heroes (U) [!].nes"
set SCRIPTNAME="kungfuheroesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

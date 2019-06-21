@echo off
set T_FILENAME="TR_Woody Pop (U) (V1.1) [!].gg"
set SCRIPTNAME="woodypopgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

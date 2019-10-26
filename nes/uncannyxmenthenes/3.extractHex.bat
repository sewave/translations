@echo off
set T_FILENAME="TR_Uncanny X-Men, The (U) [!].nes"
set SCRIPTNAME="uncannyxmenthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

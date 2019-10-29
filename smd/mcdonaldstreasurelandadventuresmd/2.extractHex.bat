@echo off
set T_FILENAME="TR_McDonald's Treasure Land Adventure (U) [!].bin"
set SCRIPTNAME="mcdonaldstreasurelandadventuresmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

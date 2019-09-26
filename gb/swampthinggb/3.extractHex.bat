@echo off
set T_FILENAME="TR_Swamp Thing (U) [!].gb"
set SCRIPTNAME="swampthinggb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

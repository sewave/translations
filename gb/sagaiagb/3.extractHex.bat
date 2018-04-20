@echo off
set T_FILENAME="TR_Sagaia (J) [!].gb"
set SCRIPTNAME="sagaiagb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

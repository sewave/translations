@echo off
set T_FILENAME="TR_Tom and Jerry (U) [M][!].gb"
set SCRIPTNAME="tomandjerrygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

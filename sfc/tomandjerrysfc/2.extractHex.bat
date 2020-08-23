@echo off
set T_FILENAME="TR_Tom and Jerry (USA).sfc"
set SCRIPTNAME="tomandjerrysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

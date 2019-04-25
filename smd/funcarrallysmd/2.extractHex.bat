@echo off
set T_FILENAME="TR_Fun Car Rally (Beta).bin"
set SCRIPTNAME="funcarrallysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

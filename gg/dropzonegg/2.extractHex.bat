@echo off
set T_FILENAME="TR_Dropzone (Europe).gg"
set SCRIPTNAME="dropzonegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

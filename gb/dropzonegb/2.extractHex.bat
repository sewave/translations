@echo off
set T_FILENAME="TR_Dropzone (Europe).gb"
set SCRIPTNAME="dropzonegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6D0B:100
pause

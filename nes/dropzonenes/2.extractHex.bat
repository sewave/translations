@echo off
set T_FILENAME="TR_Dropzone (Europe).nes"
set SCRIPTNAME="dropzonenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DDB0:100
pause

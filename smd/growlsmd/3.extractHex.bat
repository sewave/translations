@echo off
set T_FILENAME="TR_Growl (U) [!].bin"
set SCRIPTNAME="growlsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

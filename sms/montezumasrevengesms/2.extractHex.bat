@echo off
set T_FILENAME="TR_Montezuma's Revenge (U) [!].sms"
set SCRIPTNAME="montezumasrevengesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex ADB0:40,B1D0:40
pause

@echo off
set T_FILENAME="TR_Konami Hyper Soccer (Europe).nes"
set SCRIPTNAME="konamihypersoccernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

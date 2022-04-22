@echo off
set T_FILENAME="TR_Penguin Adventure (Korea) (Unl) (Pirate).sms"
set SCRIPTNAME="penguinadventuresms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

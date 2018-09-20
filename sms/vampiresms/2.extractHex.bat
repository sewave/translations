@echo off
set T_FILENAME="TR_Vampire (E) [!].sms"
set SCRIPTNAME="vampiresms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="TR_California Games II (E) [!].sms"
set SCRIPTNAME="californiagamesiisms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

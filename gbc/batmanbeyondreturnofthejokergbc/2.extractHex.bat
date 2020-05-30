@echo off
set T_FILENAME="TR_Batman Beyond - Return of the Joker (U) [C][!].gbc"
set SCRIPTNAME="batmanbeyondreturnofthejokergbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

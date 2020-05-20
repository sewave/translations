@echo off
set T_FILENAME="TR_NBA Jam (E) (Prototype).sms"
set SCRIPTNAME="nbajamsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

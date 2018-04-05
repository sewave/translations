@echo off
set T_FILENAME="TR_Taz-Mania (E) [!].sms"
set SCRIPTNAME="tazmaniasms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1A272-1A372,182C0-182FF,1A44A-1A84A
pause

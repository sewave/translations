@echo off
set T_FILENAME="TR_Bram Stoker's Dracula (Europe).sms"
set SCRIPTNAME="bramstokersdraculasms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

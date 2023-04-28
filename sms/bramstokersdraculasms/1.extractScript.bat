@echo off
set T_FILENAME="Bram Stoker's Dracula (Europe).sms"
set SCRIPTNAME="bramstokersdraculasms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

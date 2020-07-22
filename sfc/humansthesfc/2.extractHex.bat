@echo off
set T_FILENAME="TR_Humans, The (Europe).sfc"
set SCRIPTNAME="humansthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

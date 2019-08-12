@echo off
set T_FILENAME="TR_Todd's Adventures in Slime World (U) [!].bin"
set SCRIPTNAME="toddsadventuresinslimeworldsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

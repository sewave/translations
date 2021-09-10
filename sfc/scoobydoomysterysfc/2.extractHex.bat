@echo off
set T_FILENAME="TR_Scooby-Doo Mystery (USA).sfc"
set SCRIPTNAME="scoobydoomysterysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="TR_American Tail, An - Fievel Goes West (USA).sfc"
set SCRIPTNAME="americantailanfievelgoeswestsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8B96A:60
pause

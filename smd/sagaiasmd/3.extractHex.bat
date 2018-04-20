@echo off
set T_FILENAME="TR_Sagaia (U) [c][!].gen"
set SCRIPTNAME="sagaiasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 72A60-72B40,74060:80,7C820:400
pause

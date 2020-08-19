@echo off
set T_FILENAME="TR_Mohawk & Headphone Jack (USA).sfc"
set SCRIPTNAME="mohawkheadphonejacksfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="Mohawk & Headphone Jack (USA).sfc"
set SCRIPTNAME="mohawkheadphonejacksfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

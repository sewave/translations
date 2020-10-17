@echo off
set T_FILENAME="TR_Kirby's Dream Course (USA).sfc"
set SCRIPTNAME="kirbysdreamcoursesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

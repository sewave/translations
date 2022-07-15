@echo off
set T_FILENAME="TR_Home Improvement - Power Tool Pursuit! (USA).sfc"
set SCRIPTNAME="homeimprovementpowertoolpursuitsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="Home Improvement - Power Tool Pursuit! (USA).sfc"
set SCRIPTNAME="homeimprovementpowertoolpursuitsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

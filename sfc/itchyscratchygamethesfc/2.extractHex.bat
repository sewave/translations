@echo off
set T_FILENAME="TR_Itchy & Scratchy Game, The (USA).sfc"
set SCRIPTNAME="itchyscratchygamethesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

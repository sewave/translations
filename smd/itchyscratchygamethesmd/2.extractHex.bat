@echo off
set T_FILENAME="TR_Itchy & Scratchy Game, The (USA) (Proto).md"
set SCRIPTNAME="itchyscratchygamethesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

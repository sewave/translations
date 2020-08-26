@echo off
set T_FILENAME="Itchy & Scratchy Game, The (USA) (Proto).md"
set SCRIPTNAME="itchyscratchygamethesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

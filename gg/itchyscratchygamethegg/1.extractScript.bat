@echo off
set T_FILENAME="Itchy & Scratchy Game, The (U) [!].gg"
set SCRIPTNAME="itchyscratchygamethegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

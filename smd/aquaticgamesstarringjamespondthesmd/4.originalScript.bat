@echo off
set T_FILENAME="Aquatic Games - Starring James Pond, The (UE) [!].gen"
set SCRIPTNAME="aquaticgamesstarringjamespondthesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

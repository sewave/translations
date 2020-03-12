@echo off
set T_FILENAME="Immortal, The (UE) [!].gen"
set SCRIPTNAME="immortalthesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Konami's Baseball (1984) (Konami) (J).rom"
set SCRIPTNAME="konamisbaseballrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

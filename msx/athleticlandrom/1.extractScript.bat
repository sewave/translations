@echo off
set T_FILENAME="Athletic Land (1984) (Konami) (J).rom"
set SCRIPTNAME="athleticlandrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

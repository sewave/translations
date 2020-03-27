@echo off
set T_FILENAME="Xevious - Fardraut Saga (1989) (Namcot) (J).mx2"
set SCRIPTNAME="xeviousfardrautsagamx2"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="Hyper Sports 3 (1985) (Konami) (J).rom"
set SCRIPTNAME="hypersports3rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

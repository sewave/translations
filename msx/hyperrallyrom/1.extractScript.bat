@echo off
set T_FILENAME="Hyper Rally (1985) (Konami) (J).rom"
set SCRIPTNAME="hyperrallyrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

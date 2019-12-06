@echo off
set T_FILENAME="Protector, The (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="protectortherom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

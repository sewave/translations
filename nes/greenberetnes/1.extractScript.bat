@echo off
set T_FILENAME="Green Beret (FDS Conversion, Whirlwind Manu)(Unl)[U][!].nes"
set SCRIPTNAME="greenberetnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

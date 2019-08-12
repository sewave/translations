@echo off
set T_FILENAME="Puyo Pop (World) (En,Ja) (v1.06).ngc"
set SCRIPTNAME="puyopopngc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

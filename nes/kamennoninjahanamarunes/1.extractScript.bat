@echo off
set T_FILENAME="Kamen no Ninja - Hanamaru (J) [T+ENG].nes"
set SCRIPTNAME="kamennoninjahanamarunes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause

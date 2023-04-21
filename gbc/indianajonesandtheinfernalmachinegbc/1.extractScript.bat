@echo off
set T_FILENAME="Indiana Jones and the Infernal Machine (USA, Europe) (En,Fr,De).gbc"
set SCRIPTNAME="indianajonesandtheinfernalmachinegbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause

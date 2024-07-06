@echo off
set T_FILENAME="Gunpowder, Treason & Plot.tzx"
set SCRIPTNAME="gunpowdertreasonplottzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

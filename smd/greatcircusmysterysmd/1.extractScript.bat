@echo off
set T_FILENAME="Great Circus Mystery Starring Mickey & Minnie, The (USA).md"
set SCRIPTNAME="greatcircusmysterysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause

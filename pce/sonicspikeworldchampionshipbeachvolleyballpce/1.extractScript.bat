@echo off
set T_FILENAME="Sonic Spike - World Championship Beach Volleyball (U).pce"
set SCRIPTNAME="sonicspikeworldchampionshipbeachvolleyballpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

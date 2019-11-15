@echo off
set T_FILENAME="TR_Sonic Spike - World Championship Beach Volleyball (U).pce"
set S_FILENAME="Sonic Spike - World Championship Beach Volleyball (U).pce"
set SCRIPTNAME="sonicspikeworldchampionshipbeachvolleyballpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

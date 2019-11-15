@echo off
set T_FILENAME="TR_Sonic Spike - World Championship Beach Volleyball (U).pce"
set SCRIPTNAME="sonicspikeworldchampionshipbeachvolleyballpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

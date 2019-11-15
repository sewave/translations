@echo off
set T_FILENAME="TR_Sonic Spike - World Championship Beach Volleyball (U).pce"
set S_FILENAME="Sonic Spike - World Championship Beach Volleyball (U).pce"
set SCRIPTNAME="sonicspikeworldchampionshipbeachvolleyballpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

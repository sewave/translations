@echo off
set T_FILENAME="TR_Chou Fuyuu Yousai Exed Exes (Japan).nes"
set S_FILENAME="Chou Fuyuu Yousai Exed Exes (Japan).nes"
set SCRIPTNAME="choufuyuuyousaiexedexesnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause

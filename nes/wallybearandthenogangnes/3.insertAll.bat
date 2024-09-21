@echo off
set T_FILENAME="TR_Wally Bear and the No! Gang (USA) (Unl).nes"
set S_FILENAME="Wally Bear and the No! Gang (USA) (Unl).nes"
set SCRIPTNAME="wallybearandthenogangnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause

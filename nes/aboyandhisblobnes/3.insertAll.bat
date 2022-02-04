@echo off
set T_FILENAME="TR_David Crane's A Boy and His Blob - Trouble on Blobolonia (USA).nes"
set S_FILENAME="David Crane's A Boy and His Blob - Trouble on Blobolonia (USA).nes"
set SCRIPTNAME="aboyandhisblobnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause

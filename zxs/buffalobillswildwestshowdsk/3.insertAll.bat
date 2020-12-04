@echo off
set T_FILENAME="TR_Buffalo Bill's Wild West Show (System 4).dsk"
set S_FILENAME="Buffalo Bill's Wild West Show (System 4).dsk"
set SCRIPTNAME="buffalobillswildwestshowdsk"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

@echo off
set T_FILENAME="Buffalo Bill's Wild West Show (System 4).dsk"
set SCRIPTNAME="buffalobillswildwestshowdsk"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

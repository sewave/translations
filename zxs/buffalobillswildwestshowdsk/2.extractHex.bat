@echo off
set T_FILENAME="TR_Buffalo Bill's Wild West Show (System 4).dsk"
set SCRIPTNAME="buffalobillswildwestshowdsk"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

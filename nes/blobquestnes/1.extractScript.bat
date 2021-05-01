@echo off
set T_FILENAME="BlobQuest.nes"
set SCRIPTNAME="blobquestnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

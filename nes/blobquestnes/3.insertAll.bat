@echo off
set T_FILENAME="TR_BlobQuest.nes"
set S_FILENAME="BlobQuest.nes"
set SCRIPTNAME="blobquestnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

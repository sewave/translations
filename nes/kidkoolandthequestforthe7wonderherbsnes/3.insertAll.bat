@echo off
set T_FILENAME="TR_Kid Kool and the Quest for the 7 Wonder Herbs (U) [!].nes"
set S_FILENAME="Kid Kool and the Quest for the 7 Wonder Herbs (U) [!].nes"
set SCRIPTNAME="kidkoolandthequestforthe7wonderherbsnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause

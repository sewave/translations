@echo off
set T_FILENAME="TR_Pico Pico (Japan).rom"
set S_FILENAME="Pico Pico (Japan).rom"
set SCRIPTNAME="picopicorom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%

set T_FILENAME="TR_Pico Pico (Japan)NonExtended.rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%NonExtended.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%

pause

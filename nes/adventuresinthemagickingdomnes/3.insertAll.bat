@echo off
set T_FILENAME="TR_Adventures in the Magic Kingdom (USA).nes"
set S_FILENAME="Adventures in the Magic Kingdom (USA).nes"
set SCRIPTNAME="adventuresinthemagickingdomnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

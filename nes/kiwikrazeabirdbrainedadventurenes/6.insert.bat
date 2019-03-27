@echo off
set T_FILENAME="TR_Kiwi Kraze - A Bird-Brained Adventure! (U) [!].nes"
set S_FILENAME="Kiwi Kraze - A Bird-Brained Adventure! (U) [!].nes"
set SCRIPTNAME="kiwikrazeabirdbrainedadventurenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause

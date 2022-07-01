@echo off
set T_FILENAME="TR_Wonder Boy III - Monster Lair (Japan, Europe).md"
set S_FILENAME="Wonder Boy III - Monster Lair (Japan, Europe).md"
set SCRIPTNAME="wonderboyiiimonsterlairsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause

set T_FILENAME="Time Zone (J) [T+ESP].nes"
set S_FILENAME="Time Zone (J) [T+Eng1.3_KingMike].nes"
set SCRIPTNAME="timezone"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.ext %T_FILENAME%
pause
@echo off
set T_FILENAME="Taiyou no Yuusha - Fighbird GB (Japan) [T+ENG].gb"
set SCRIPTNAME="taiyounoyuushafighbirdgbgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause

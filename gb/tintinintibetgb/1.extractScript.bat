@echo off
set T_FILENAME="Tintin in Tibet (Europe) (En,Fr,De,Nl) (SGB Enhanced).gb"
set SCRIPTNAME="tintinintibetgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause

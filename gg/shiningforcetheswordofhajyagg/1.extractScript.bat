@echo off
set T_FILENAME="Shining Force - The Sword of Hajya (USA).gg"
set SCRIPTNAME="shiningforcetheswordofhajyagg"
java -jar Hextractor.jar -a tiles_insert.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a title.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a separated_letters.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off
python extract_all.py
pause

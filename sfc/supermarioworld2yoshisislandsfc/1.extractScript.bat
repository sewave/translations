@echo off
set T_FILENAME="Super Mario World 2 - Yoshi's Island (USA, Asia) (Rev 1).sfc"
set SCRIPTNAME="supermarioworld2yoshisislandsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause

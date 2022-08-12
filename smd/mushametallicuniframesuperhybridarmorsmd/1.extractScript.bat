@echo off
set T_FILENAME="MUSHA - Metallic Uniframe Super Hybrid Armor (USA).md"
set SCRIPTNAME="mushametallicuniframesuperhybridarmorsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause

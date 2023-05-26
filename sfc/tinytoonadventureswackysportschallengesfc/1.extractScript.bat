@echo off
set T_FILENAME="Tiny Toon Adventures - Wacky Sports Challenge (USA).sfc"
set SCRIPTNAME="tinytoonadventureswackysportschallengesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

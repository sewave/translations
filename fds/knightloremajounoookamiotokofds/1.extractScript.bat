@echo off
set T_FILENAME="Knight Lore - Majou no Ookami Otoko (Japan).fds"
set SCRIPTNAME="knightloremajounoookamiotokofds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause

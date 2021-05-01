@echo off
set T_FILENAME="TR_Knight Lore - Majou no Ookami Otoko (Japan).fds"
set SCRIPTNAME="knightloremajounoookamiotokofds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D6C:E0,203C:10,201C:10,11AB9:40,11BB9:10,11CB9:10,118C8:60,10B37:60,13D7B:60,A9D0:100,ACA0:30,A8D0:50
pause

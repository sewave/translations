@echo off
set T_FILENAME="Solomon no Kagi - Oujo Rihita no Namida (J) [!].sms"
set SCRIPTNAME="solomonnokagioujorihitanonamidasms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

@echo off
set T_FILENAME="World Cup Soccer ~ World Championship Soccer (Japan, USA) (Rev C).md"
set SCRIPTNAME="worldcupsoccerworldchampionshipsoccersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

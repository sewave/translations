@echo off
set T_FILENAME="TR_World Cup Soccer ~ World Championship Soccer (Japan, USA) (Rev C).md"
set SCRIPTNAME="worldcupsoccerworldchampionshipsoccersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

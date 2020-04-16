@echo off
set T_FILENAME="TR_World Cup Soccer ~ World Championship Soccer (Japan, USA) (Rev C).md"
set S_FILENAME="World Cup Soccer ~ World Championship Soccer (Japan, USA) (Rev C).md"
set SCRIPTNAME="worldcupsoccerworldchampionshipsoccersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

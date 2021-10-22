@echo off
set T_FILENAME="TR_Cyber Brawl ~ Cosmic Carnage (Japan, USA).32x"
set S_FILENAME="Cyber Brawl ~ Cosmic Carnage (Japan, USA).32x"
set SCRIPTNAME="cyberbrawlcosmiccarnage32x"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

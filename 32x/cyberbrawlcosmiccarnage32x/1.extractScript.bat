@echo off
set T_FILENAME="Cyber Brawl ~ Cosmic Carnage (Japan, USA).32x"
set SCRIPTNAME="cyberbrawlcosmiccarnage32x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

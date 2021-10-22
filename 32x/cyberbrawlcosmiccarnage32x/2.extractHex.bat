@echo off
set T_FILENAME="TR_Cyber Brawl ~ Cosmic Carnage (Japan, USA).32x"
set SCRIPTNAME="cyberbrawlcosmiccarnage32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

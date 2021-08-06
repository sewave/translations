@echo off
set T_FILENAME="TR_Ninja Gaiden II - The Dark Sword of Chaos (USA).nes"
set SCRIPTNAME="ninjagaideniithedarkswordofchaosnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 32C00:10,21D40:10,20B10:100,20330:60,21450:40,21D20:10,21D60:10
pause

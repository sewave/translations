@echo off
set T_FILENAME="TR_Ninja Gaiden II - The Dark Sword of Chaos (USA).nes"
set SCRIPTNAME="ninjagaideniithedarkswordofchaosnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 32C00:10,21D40:10,20B10:100,20330:60,21430:60,21D20:10,21D60:10,32810:380,32690:80,32790:80,83DE:4,84C8:4C,85AD:1,85BE:1,
pause

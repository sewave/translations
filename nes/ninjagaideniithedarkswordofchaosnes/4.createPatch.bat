@echo off
set T_FILENAME="TR_Ninja Gaiden II - The Dark Sword of Chaos (USA).nes"
set S_FILENAME="Ninja Gaiden II - The Dark Sword of Chaos (USA).nes"
set SCRIPTNAME="ninjagaideniithedarkswordofchaosnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

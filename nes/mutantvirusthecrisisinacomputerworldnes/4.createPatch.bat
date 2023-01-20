@echo off
set T_FILENAME="TR_Mutant Virus, The - Crisis in a Computer World (USA).nes"
set S_FILENAME="Mutant Virus, The - Crisis in a Computer World (USA).nes"
set SCRIPTNAME="mutantvirusthecrisisinacomputerworldnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

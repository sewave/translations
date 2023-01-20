@echo off
set T_FILENAME="TR_Mutant Virus, The - Crisis in a Computer World (USA).nes"
set SCRIPTNAME="mutantvirusthecrisisinacomputerworldnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20B70:20,2FEC0:10,37BC0:10,27280:10,272E0:10,274C0:10,27680:10,276E0:10,278C0:10,27150:10,275C0:10
pause

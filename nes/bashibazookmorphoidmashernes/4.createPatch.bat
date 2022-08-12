@echo off
set T_FILENAME="TR_Bashi Bazook - Morphoid Masher (USA) (Proto).nes"
set S_FILENAME="Bashi Bazook - Morphoid Masher (USA) (Proto).nes"
set SCRIPTNAME="bashibazookmorphoidmashernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

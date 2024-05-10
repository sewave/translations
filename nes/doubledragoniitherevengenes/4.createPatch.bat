@echo off
set T_FILENAME="TR_Double Dragon II - The Revenge (USA) (Rev A).nes"
set S_FILENAME="Double Dragon II - The Revenge (USA) (Rev A).nes"
set SCRIPTNAME="doubledragoniitherevengenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

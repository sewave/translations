@echo off
set T_FILENAME="TR_G.I. Joe - The Atlantis Factor (USA).nes"
set S_FILENAME="G.I. Joe - The Atlantis Factor (USA).nes"
set SCRIPTNAME="gijoetheatlantisfactornes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

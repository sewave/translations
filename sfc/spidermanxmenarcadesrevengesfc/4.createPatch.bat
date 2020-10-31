@echo off
set T_FILENAME="TR_Spider-Man - X-Men - Arcade's Revenge (USA).sfc"
set S_FILENAME="Spider-Man - X-Men - Arcade's Revenge (USA).sfc"
set SCRIPTNAME="spidermanxmenarcadesrevengesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Jetsons, The - Invasion of the Planet Pirates (USA).sfc"
set S_FILENAME="Jetsons, The - Invasion of the Planet Pirates (USA).sfc"
set SCRIPTNAME="jetsonstheinvasionoftheplanetpiratessfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

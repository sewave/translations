@echo off
set T_FILENAME="TR_Legend of Hero Tonma (USA).pce"
set S_FILENAME="Legend of Hero Tonma (USA).pce"
set SCRIPTNAME="legendofherotonmapce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

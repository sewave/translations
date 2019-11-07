@echo off
set T_FILENAME="TR_Gran Aventura Submarina, La (Spain) (Gluk Video) (Unl).nes"
set S_FILENAME="Gran Aventura Submarina, La (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="granaventurasubmarinalanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

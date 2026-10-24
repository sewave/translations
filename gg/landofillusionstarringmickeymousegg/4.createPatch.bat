@echo off
set T_FILENAME="TR_Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"
set S_FILENAME="Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"
set SCRIPTNAME="landofillusionstarringmickeymousegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

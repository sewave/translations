@echo off
set T_FILENAME="TR_Bart Simpson's Escape from Camp Deadly (USA, Europe).gb"
set S_FILENAME="Bart Simpson's Escape from Camp Deadly (USA, Europe).gb"
set SCRIPTNAME="bartsimpsonsescapefromcampdeadlygb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

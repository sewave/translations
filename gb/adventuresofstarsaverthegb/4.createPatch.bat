@echo off
set T_FILENAME="TR_Adventures of Star Saver, The (USA, Europe).gb"
set S_FILENAME="Adventures of Star Saver, The (USA, Europe).gb"
set SCRIPTNAME="adventuresofstarsaverthegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

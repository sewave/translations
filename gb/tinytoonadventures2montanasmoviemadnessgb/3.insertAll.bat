@echo off
set T_FILENAME="TR_Tiny Toon Adventures 2 - Montana's Movie Madness (USA, Europe).gb"
set S_FILENAME="Tiny Toon Adventures 2 - Montana's Movie Madness (USA, Europe).gb"
set SCRIPTNAME="tinytoonadventures2montanasmoviemadnessgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause

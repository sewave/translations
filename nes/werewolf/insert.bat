set T_FILENAME="Werewolf - The Last Warrior (U) [T+ESP].nes"
set S_FILENAME="Werewolf - The Last Warrior (U) [!].nes"
set SCRIPTNAME="werewolf"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl %SCRIPTNAME%Title_es.txt %T_FILENAME% false 0
pause
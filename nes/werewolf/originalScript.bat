set T_FILENAME="Werewolf - The Last Warrior (U) [!].nes"
set SCRIPTNAME="werewolf"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 5110-5C10-FF,15437-1544B-FF,15566-1556D-FF,15570-15572-FF,1D525-1D538-FF,26812-269A1-FF-FE
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 1E458-1E491-FE-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.txt false 198D7-198F6-FE
pause
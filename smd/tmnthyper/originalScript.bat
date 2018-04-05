set T_FILENAME="Teenage Mutant Ninja Turtles - The Hyperstone Heist (U) [!].bin"
set SCRIPTNAME="tmnthyper"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 1B5EE-1B64F-FF,1B853-1BA53-FF,31F0B-31F6B-3F,33BF9-33C6E-3F,34831-3486B-3F,3530B-35350-3F,369B3-36A12-3F,37757-3778D-3F,17250-17277-FF,17994-179E4-3F
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 3C515-3C5C0-3F,
java -jar Hextractor.jar -a %SCRIPTNAME%Story.tbl %T_FILENAME% %SCRIPTNAME%Story.txt false 1980E-19A06-3F
java -jar Hextractor.jar -a %SCRIPTNAME%Story2.tbl %T_FILENAME% %SCRIPTNAME%Story2.txt false 1BB70-1BCBA-3F
pause
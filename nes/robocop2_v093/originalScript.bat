set T_FILENAME="RoboCop 2 (U) (PRG1) [!].nes"
java -jar Hextractor.jar -a robocop2.tbl %T_FILENAME% robocop2.txt false 1A16D-1AE9C-FF
java -jar Hextractor.jar -a robocop2End.tbl %T_FILENAME% robocop2End.txt false 1f996-1fc82-ff
java -jar Hextractor.jar -a robocop2Arrest.tbl %T_FILENAME% robocop2Arrest.txt false 19088-190A1-FF,190AC-190C1-FF,19190-191A1-FF,191AD-191BF-FF,19221-1923A-FF,19241-19257-FF,19321-19330-FF,19341-19350-FF,1937F-19390-FF,1939E-193B2-FF
java -jar Hextractor.jar -a robocop2Title.tbl %T_FILENAME% robocop2Title.txt false 18636-1863F-FF,18656-1865F-FF,18676-1867F-FF,18696-1869F-FF,186B6-186BF-FF,186D6-186DF-FF,18716-1871F-FF,18736-1873F-FF,18756-1875F-FF,18776-1877F-FF,18796-1879F-FF,187B6-187BF-FF,1eF27-1EF46-FF
java -jar Hextractor.jar -a robocop2NoCont.tbl %T_FILENAME% robocop2NoCont.txt false 19460-1957F-FF
pause
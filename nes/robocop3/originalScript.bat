set T_FILENAME="Robocop 3 (U).nes"
set SCRIPTNAME="robocop3"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 17870-17DB8-FA
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 1475C-14831-FF,16D50-16D59-FF,14387-14396-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.txt false 1C9D0-1CC19-00


pause
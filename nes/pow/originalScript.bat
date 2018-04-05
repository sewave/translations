set T_FILENAME="POW - Prisoners of War (U).nes"
set SCRIPTNAME="pow"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 18570-1858D-FF,12323-124C0-FF,198DD-19958-FF,1A5AA-1AC2B-FF,
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 401A-402F-FF
pause
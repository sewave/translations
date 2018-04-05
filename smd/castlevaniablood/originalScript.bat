set T_FILENAME="Castlevania - Bloodlines (U) [!].gen"
set SCRIPTNAME="castlevaniablood"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt 58E4-5AB7-FD,799C-7A96-FD
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.txt 843C-876C-FD,
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt B8E0-B9D9-FF,BA8E-BB95-FF,D9DA-D9FD-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.txt %SCRIPTNAME%Alt3.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt4.tbl %T_FILENAME% %SCRIPTNAME%Alt4.txt %SCRIPTNAME%Alt4.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt6.tbl %T_FILENAME% %SCRIPTNAME%Alt6.txt %SCRIPTNAME%Alt6.off
pause
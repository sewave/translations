set T_FILENAME="Psychic World (E) [!].sms"
set SCRIPTNAME="psyworld"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false F68-101E-FF,14A34-14FAC-00,15644-156AF-30,15F00-16E34-00
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false C91E-C98B-FF
pause
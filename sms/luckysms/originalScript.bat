set T_FILENAME="Lucky Dime Caper, The - Starring Donald Duck (E) [!].sms"
set SCRIPTNAME="luckysms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt %SCRIPTNAME%.off
pause
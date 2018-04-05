set T_FILENAME="Addams Family, The (E) [!].sms"
set SCRIPTNAME="addamssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 41FB-42E3-FF,655A-665D-FF,72C3-76AF-FF,
pause
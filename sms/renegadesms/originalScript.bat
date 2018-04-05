set T_FILENAME="Renegade (E) [!].sms"
set SCRIPTNAME="renegadesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 65E3-67D1-FF,6951-6B65-FF,61E2-6245-FF
pause
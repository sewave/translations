set T_FILENAME="Probotector (E) [!].bin"
set SCRIPTNAME="probotectorsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%Menu.tbl %T_FILENAME% %SCRIPTNAME%Menu.txt false A588-A602-FF,A86C-AA28-FF,9804A-98334-FF,
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false FB19A-FC534-F0
pause
set T_FILENAME="Monster In My Pocket (U) [!].nes"
set SCRIPTNAME="mpocket"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false B61B-B808-FF,1E961-1E96C-FF,1E9A6-1EAE6-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 1E97A-1E9A3-FF,1EB1E-1EBD3-FF,FC1C-FCC2-FF-FE
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.txt false 1EAE9-1EAF5-FF,1EAF8-1EB00-FF,1EB03-1EB0C-FF
pause
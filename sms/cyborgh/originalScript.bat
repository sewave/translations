set T_FILENAME="Cyborg Hunter (UE) [!].sms"
set SCRIPTNAME="cyborgh"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 12B9A-12F3A-62,B97-BB7-FF,3882-38F4-00,7D73-7E61-FF
pause
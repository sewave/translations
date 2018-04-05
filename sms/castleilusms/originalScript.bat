set T_FILENAME="Castle of Illusion Starring Mickey Mouse (U) (V1.1) [!].sms"
set SCRIPTNAME="castleilusms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 37089-371FC-FF,18000-186C1-00,1B528-1BA7C-FF,1BA97-1BFDD-FF,2F642-2F677-FF,2F7A6-2F8B5-FF
pause
set T_FILENAME="Bram Stoker's Dracula (E) [!].sms"
set SCRIPTNAME="draculasms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 56B9-5841-00,5ACA-5AE7-00,5B24-5B67-00,5C43-5C68-00,6E84-6F2C-00,37A8A-37DF4-FF,1A128-1A143-FF
pause
#Write a shell script to list the attributes of the process running on a system
#Also store these information in a file named as processinfo.info
#!/bin/bash

ps -ef > "Processinfo.info"


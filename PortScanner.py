#!/usr/bin/env python
import socket
import subprocess
import sys                                        #little portscanner in python
from datetime import datetime

# Clear screen
subprocess.call('clear', shell=True)

# Ask for input
remoteServer    = raw_input("Enter a remote host to scan: ")
remoteServerIP  = socket.gethostbyname(remoteServer)
portrange1      = input("Enter first range data: ")
portrange2      = input("Enter second range data: ")

# waiting banner
print "-" * 60
print "Please wait, scanning remote host", remoteServerIP
print "-" * 60

# Check start time
t1 = datetime.now()

# port scanner

try:
    for port in range(portrange1,portrange2):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        result = sock.connect_ex((remoteServerIP, port))
        if result == 0:
            print "Port {}: 	 Open".format(port)
        sock.close()

except KeyboardInterrupt:
    print "You pressed Ctrl+C"
    sys.exit()

except socket.gaierror:
    print 'Hostname could not be resolved. Exiting'
    sys.exit()

except socket.error:
    print "Couldn't connect to server"
    sys.exit()

# calculating time
t2 = datetime.now()
total =  t2 - t1
print 'Scanning Completed in: ', total

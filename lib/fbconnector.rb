#!/bin/ruby
#
# Fritz!Box Connector
# zuerst muss der Callmonitor in der FB aktiviert werden: Telefoncode #96*5*
# mit dem Telefoncode  #96*4* kann er wieder beendet werden
#

# Konfiguration
fbipadress = "192.168.97.1"     # Fritz!Box IP Adresse
uid = "12345"                         # morks.de ID

# code
require "socket"
require "eventswitch"

evt = Eventswitch.new
sock = TCPSocket.new(fbipadress, 1012)

while true
  cstaevent = sock.recv(1024)
  event = cstaevent.split(/;/)

  if event[1].eql?("CALL")
    # ausgehender Anruf
    caller = event[5]
    callee = event[4]
    state = "-1"
    direction = "1"
  end

  if event[1].eql?("RING")
    # eingehender Anruf
    caller = event[3]
    callee = event[4]
    state = "-1"    
    direction = "0"
  end

  if event[1].eql?("CONNECT")
    # verbunden
    caller = event[4]
    callee = event[5]
    state = "1"   
  end

  if event[1].eql?("DISCONNECT")
    # beendet
    caller = ""
    callee = ""
    state = "0"   
  end

  evt.callevent(event[2], state, caller, callee, direction, uid)
end

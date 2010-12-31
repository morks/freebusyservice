#!/bin/ruby
#
# eventswitch by Michael Plaschke
# www.morks.de
#

class Eventswitch

  require 'net/http'

  def callevent(callid, callstate, caller, callee, direction, uid)
    #puts "set status #{callstate} for #{caller}"
    Net::HTTP.get_print "localhost:3000", "/api/setstatus?uid=#{uid}&ddi=#{caller}&status=#{callstate}"
  end

end



def sha1 (data)
  require "digest/sha1"
  return Digest::SHA1.hexdigest(data)
end

def gettoken
  require "digest/sha1"
  return Digest::SHA1.hexdigest Time.now.to_s
end

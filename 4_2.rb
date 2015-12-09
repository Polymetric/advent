require 'digest'

md5 = Digest::MD5.new

num = 0

while true
  digest = md5.hexdigest('bgvyzdsv' + num.to_s)
  if /^000000/.match(digest)
    p num
    p digest
  end
  num += 1
end

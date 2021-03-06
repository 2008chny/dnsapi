# = Key Record (KEY)
# 
# Provides the ability to associate some text with a host or other name. The TXT
# record is used to define the Sender Policy Framework (SPF) information record
# which may be used to validate legitimate email sources from a domain. The SPF
# record while being increasing deployed is not (July 2004) a formal IETF RFC
# standard.
#
# Obtained from http://www.zytrax.com/books/dns/ch8/key.html

class KEY < Record
    def resolv_resource_class
        Resolv::DNS::Resource::IN::KEY
    end

    def match_resolv_resource(resource)
        resource.strings.join(' ') == self.content.chomp('.')
    end
end

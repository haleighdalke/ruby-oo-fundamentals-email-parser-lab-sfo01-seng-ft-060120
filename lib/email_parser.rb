# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize(raw_email)
        @raw_email = raw_email
    end

    def parse

        emails = @raw_email.split(" ")
        emails = emails.map do |e|
            if e[-1] == ","
                e.slice(0..-2)
            else 
                e
            end
        end
        emails.uniq
    end
end
INCREASING = Regexp.union [*?a..?z].each_cons(3).map(&:join)

def next_password(password)
  loop do
    password.next!
    if password[INCREASING]
      if password[/[^iol]/]
        if password.scan(/(.)\1/).flatten.uniq.size > 1
          return password
        end
      end
    end
  end
end

password = "hxbxxyzz"
p password = next_password(password)
p password = next_password(password)

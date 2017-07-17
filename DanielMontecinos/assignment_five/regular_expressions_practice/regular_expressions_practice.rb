def correct_username?(user_name)
  user_name =~ /^[a-z]+_([a-z])*\d+$/
end

def correct_password?(user_password)
  user_password =~ /^(?=.+[a-zA-Z])(?=.+\d).{8,16}$/
end

def correct_email?(user_email)
  user_email =~ /^[a-z]+@[a-z]+\.com(\.bo)?$/
end

puts 'VALIDATING USER NAMES'.center(40, '-')
p correct_username?('daniel_m10').nil? ? false : true
p correct_username?('daniel_00010').nil? ? false : true
p correct_username?('daniel').nil? ? false : true
puts '-' * 40

puts 'VALIDATING USER PASSWORDS'.center(40, '-')
p correct_password?('P@ssw0rd').nil? ? false : true
p correct_password?('Passw0rd').nil? ? false : true
p correct_password?('Password').nil? ? false : true
p correct_password?('password').nil? ? false : true
puts '-' * 40

puts 'VALIDATING USER EMAILS'.center(40, '-')
p correct_email?('anything@domain.com').nil? ? false : true
p correct_email?('anything@domain.org').nil? ? false : true
p correct_email?('anything_domain.org').nil? ? false : true
p correct_email?('anything@domain.com.bo').nil? ? false : true
p correct_email?('anything@domain.com.mx').nil? ? false : true
p correct_email?('anything@domain.com.ob').nil? ? false : true
puts '-' * 40

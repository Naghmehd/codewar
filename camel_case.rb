# Down case the string

def camel_case(str)
  str.gsub(/[]- _][^a-z]/i, ''){$1.capitalize}
end

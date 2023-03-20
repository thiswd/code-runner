x = "12:12:00AM"
y = "02:59:45PM"

def timeConversion(s)
  return if s.length != 10
  is_afternoon = s.slice!(-2..-1) === "PM"

  s.split(":").map.with_index do |time, index|
    if index === 0
      i_time = time.to_i
      i_time === 12 && !is_afternoon ? "00" : is_afternoon ? (i_time + 12).to_s : time
    else
      time
    end
  end.join(":")
end

puts timeConversion(y)

# CHATGPT
def time_conversion(s)
  # Use a regular expression to validate the input format
  raise ArgumentError, "Invalid time format" unless s =~ /^(1[0-2]|0?[1-9]):([0-5][0-9]):([0-5][0-9])(AM|PM)$/

  # Split the input string into hour, minute, second, and meridian components
  hour, minute, second, meridian = s.split(/:|(?<=\d)(?=[AP]M)/)

  # Convert hour to military time
  hour = case hour.to_i
    when 12 then meridian == "AM" ? "00" : "12"
    else meridian == "PM" ? hour.to_i + 12 : hour
    end

  # Format the output string
  "#{hour}:#{minute}:#{second}"
end

# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  	if (first === "")
  		return nil
  	else
		first = first.gsub(/\W/,"")[0].downcase
	end
  	if (last === "")
  		return nil
  	else
	   last1 = last.gsub(/\W/,"").downcase
	   last2 = last1.gsub(/\d/,"")
	   return first + last2
	end
end

def format_year(year)
	year = year.to_s
	if (year.length === 4)
		annual = year[2] + year [3]
		return annual
	else
		return nil
	end
end

def build_username(first, last, *nums)
  name = format_name(first, last)
  annual = format_year(nums[0])
  username = name + annual
  
end


# /\W/
# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.
$usernames = []

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

def build_username(first, last, year)
  name = format_name(first, last)
  annual = format_year(year)
  username = name + annual
  
end

def check_privilege(level=0)
	if level === 1
		return 'seller-'
	elsif level === 2
		return "manager-"
	elsif level === 3
		return 'admin-'
	else
		return ''
	end
end

def generate_username (first, last, year, level=0)
	level = check_privilege(level)
	name = build_username(first, last, year)
	username = level + name
	number = 0

	$usernames.each {|name| if (name === username) 
		username = username + "_" + (number += 1) 
		$usernames = $usernames.push(username)
	else 
		$usernames = $usernames.push(username)
	end}
	return $usernames
end
	

		

















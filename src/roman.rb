MAP_ONES = {
	0 => "",
	1 => 'I',
	2 => 'II',
	3 => 'III',
	4 => 'IV',
	5 => 'V',
	6 => 'VI',
	7 => 'VII',
	8 => 'VIII',
	9 => 'IX'
}

MAP_TENS = {
	0 => "",
	1 => "X",
	2 => "XX",
	3 => "XXX",
	4 => "XL",
	5 => "L",
	6 => "LX",
	7 => "LXX",
	8 => "LXXX",
	9 => "XC"
}

MAP_HUNDREDS = {
	1 => 'C',
	2 => 'CC',
	3 => 'CCC',
	4 => 'CD',
	5 => 'D',
	6 => 'DC',
	7 => 'DCC',
	8 => 'DCCC',
	9 => 'CM'	
}

MAP_THOUSANDS = {
	1 => 'M',
	2 => 'MM',
	3 => 'MMM',
	4 => 'MMMM'
}

CHOOSE_MAPPER = {
	0 => MAP_ONES,
	1 => MAP_TENS,
	2 => MAP_HUNDREDS,
	3 => MAP_THOUSANDS
}

def romanize(arabic_numeral)
	str = arabic_numeral.to_s.reverse
	strarray = str.chars
	counter = 0
	rom_num_array = []
	while counter < strarray.length do
		curr_digit = strarray[counter].to_i
		puts "curr_digit: #{curr_digit}"
		puts "current map to use: #{CHOOSE_MAPPER[counter]}"
		curr_dig_map = CHOOSE_MAPPER[counter]
		curr_rom_num = curr_dig_map[curr_digit]
		puts "roman numeral gotten from the map: #{curr_rom_num}"
		rom_num_array.push(curr_rom_num)
		puts "rom_num_array: #{rom_num_array}"
		counter += 1
	end
	puts rom_num_array
	finalarray = rom_num_array.reverse
	puts "array after reversing: #{finalarray}"
	puts "joining final array: #{finalarray.join('')}"
	return finalarray.join('')
end
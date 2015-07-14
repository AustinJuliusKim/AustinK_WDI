p array_one = Array[1,4,9,16,25,36,49,50]



array_one.each do |square_root|
	p Math.sqrt(square_root).to_i
end

p array_one.map{|square_root| Math.sqrt(square_root).to_i}


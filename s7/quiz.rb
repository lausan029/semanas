o = {p: "neg", u: "do", r: "left"}
o.each_key{|key| puts key}
o.each_value{|value| puts value}



b = { 'p1' => 500, 'p2' => 15000 }
a = b.select {|k,v| (k == 'p1')|| (v==15000)}
p a



a = [1,2,3,4,5]
b = []

a.each do |n|
	b << n +2
end

p a
p b
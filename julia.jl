# this is comment 
#=
	this is  multiple comment 
basic Hello world line
=#
print("Hello World")

#=
	a simple colone file program 
=#

io_w = open("julia2.jl","w") 
txt = open("julia.jl","r") do io
	read(io,String)
end;
println(txt)
write(io_w,txt )

#=
	bubble sort practice
=#
function generate_random()
	random_array = Int[]
	for _ in 1:10
		random_number = rand(1:100)
		push!(random_array,random_number)
	end
	return random_array
end 
function bubble_sort(random_numbers)
	
	for j in 1:length(random_numbers)
		for i in 1:length(random_numbers)-j
			if random_numbers[i] > random_numbers[i+1]
				random_numbers[i] = xor(random_numbers[i],random_numbers[i+1])
				random_numbers[i+1] = xor(random_numbers[i],random_numbers[i+1])
				random_numbers[i] = xor(random_numbers[i],random_numbers[i+1])
			end
		end
	end
end 
random_numbers = generate_random()
println("before sort: ",random_numbers)
bubble_sort(random_numbers)
println("after sort :",random_numbers)

#=
	a simple dict program
=#
D=Dict("R7000"=>"U12H270T00","XR300"=>"U12H332T78","R6400v2"=>"U12H332T30")
println("boardID \"R7000\" is ", D["R7000"])
for (key,value) in D
	println("$key: $value")
end
delete!(D,"XR300")
for (key,value) in D
	println("$key: $value")
end

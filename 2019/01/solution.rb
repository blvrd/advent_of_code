def calculate_fuel_from_mass(mass, sum=0)
  fuel_requirement = (mass / 3).round - 2

  if fuel_requirement < 0
    return sum
  end

  calculate_fuel_from_mass(fuel_requirement, fuel_requirement + sum)
end

total_fuel = 0

File.open("#{File.dirname(__FILE__)}/data.txt").each do |line|
  mass = line.to_i
  total_fuel += calculate_fuel_from_mass(mass)
end

puts total_fuel

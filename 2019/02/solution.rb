def process_opcodes(arr)
  arr.each_slice(4) do |chunk|
    opcode = chunk[0]    

    case opcode
    when 1
      arr[chunk[3]] = arr[chunk[1]] + arr[chunk[2]]
    when 2
      arr[chunk[3]] = arr[chunk[1]] * arr[chunk[2]]
    when 99
      return arr
    else
      raise StandardError, "Unkown opcode: #{opcode}"
    end
  end
end

input = File.read("#{File.dirname(__FILE__)}/data.txt").split(",").map(&:to_i)

Array(0...99).each do |noun|
  Array(0...99).each do |verb|
    arr = input.dup
    arr[1] = noun
    arr[2] = verb

    output = process_opcodes(arr)[0]

    if output == 19690720
      puts "noun=#{noun} verb=#{verb}"
    end
  end
end

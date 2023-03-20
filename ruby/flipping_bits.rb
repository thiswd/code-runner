# DEPOIS DE REFATORAR
def flipping_bits(n)
  index = 31
  sum = 0
  while index >= 0 do
    int_powered = 2 ** index
    n >= int_powered ? n -= int_powered : sum += int_powered
    index -= 1
  end
  sum
end

puts flipping_bits(9)

# ANTES DE REFATORAR
def bits_32_mapping
  prev = 0
  array = []
  32.times do
    total = prev * 2
    total = 1 if total === 0
    array << total
    prev = total
  end
  array.reverse
end

def convert_int_to_bits_arr(n)
  bits_array = []
  index = 0
  while index < 32 do
    if n >= bits_32_mapping[index]
      n -= bits_32_mapping[index]
      bits_array << 1
    else
      bits_array << 0
    end
    index += 1
  end
  bits_array
end

def flip_each_bit(arr)
  arr.map { |n| n === 0 ? 1 : 0 }
end

def flippingBits(n)
  bits_arr = convert_int_to_bits_arr(n)
  bits_flip_arr = flip_each_bit(bits_arr)

  bits_flip_arr.each_with_index.reduce(0) do |sum, (int, index)|
    sum += bits_32_mapping[index] if int === 1
    sum
  end
end

puts flippingBits(9)

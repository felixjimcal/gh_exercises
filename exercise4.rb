def GetUpperCase(ascii_value)
    val = ascii_value.ord
    val -= 32

    val.chr
end

"string".each_byte do |c|
    puts GetUpperCase(c)
end
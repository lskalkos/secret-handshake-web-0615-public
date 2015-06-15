# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.

class SecretHandshake

  def initialize(input)
    @input = input.to_i
    @commands = []
  end

  def commands



    if (@input & 1) == 1
      @commands << "wink"
    end

    if (@input & 10) == 10 || (@input & 10) == 2
      @commands << "double blink"
    end

    if (@input & 100) == 100
      @commands << "close your eyes"
    end

    if (@input & 1000) == 1000 || (@input & 1000) == 864
      @commands << "jump"
    end

    if (@input & 10000) == 10000 || (@input & 10000) == 8960
      @commands.reverse!
    end



    @commands

  end

end
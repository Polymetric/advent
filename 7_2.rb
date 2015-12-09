class Circuit
  SUBS = {
    "LSHIFT"         => "<<",
    "RSHIFT"         => ">>",
    "NOT"            => "~",
    "AND"            => "&",
    "OR"             => "|",
    /\b(if|do|in)\b/ => "\\1_",
  }

  def add(line)
    SUBS.each do |from, to|
      line.gsub!(from, to)
    end
    expr, name = line.strip.split(" -> ")
    method = "def #{name}; @#{name} ||= #{expr}; end"
    puts method
    instance_eval method
  end
end

circuit = Circuit.new
open("7.input").each_line { |line| circuit.add(line) }
# my answer for part 1
circuit.add("956 -> b")
p circuit.a

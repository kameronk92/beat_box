class BeatBox
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(string)
    strings = string.split
    strings.each do |string|
      @list.append(string)
    end
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Cello #{beats}`
  end

  def remix(rate, voice)
    `say -r #{speed} -v #{voice} #{beats}`
  end
end
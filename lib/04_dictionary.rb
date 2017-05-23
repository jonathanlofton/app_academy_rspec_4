class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(hash)
    if hash.is_a?(String)
      entries[hash] = nil
    elsif hash.is_a?(Hash)
      entries.merge!(hash)
    end
  end

  def keywords
    entries.keys.sort_by { |keys| keys }
  end

  def include?(entry)
    entries.include?(entry)
  end

  def find(word)
    entries.select { |key, value| key.include?(word) }
  end


  def printable
    string = ""
    keywords.each_with_index do |key, idx|
      if idx < keywords.length - 1
        string += "[#{key}] \"#{entries[key]}\"\n"
      else
        string += "[#{key}] \"#{entries[key]}\""
      end
    end
    string
  end
end

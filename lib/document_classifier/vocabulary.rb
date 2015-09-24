require 'set'

class DocumentClassifier
  class Vocabulary
    include Normalizer

    def initialize(word_list)
      @words = word_list.map(&method(:normalize)).to_set
    end

    def self.from_file(filename)
      new(File.read(filename).lines)
    end

    def include?(word)
      @words.include?(word)
    end

    def size
      @words.count
    end
  end
end
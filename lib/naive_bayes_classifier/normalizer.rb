module NaiveBayesClassifier
  module Normalizer
    def normalize(token)
      token.downcase.strip
    end
  end
end

require "pry"
def reformat_languages(languages)
  # your code here
  new_hash = Hash.new([])
  languages.each do |type1,langPair|
    langPair.each do |lang,type2|
      if new_hash[lang].is_a?(Hash)
        new_hash[lang][:style] << type1
      else
        new_hash[lang] = {:type => type2.values[0], :style => [type1]}
      end
    end
  end
  new_hash
end

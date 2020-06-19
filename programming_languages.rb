require "pry"

def reformat_languages(languages)
  hash={}
   languages.each do |oo_functional, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, string|
        if hash[language].nil?
          hash[language] = {}
        end 
        hash[language][:style] ||= []
        hash[language][:style] << oo_functional
        if hash[language][attribute].nil?
          hash[language][attribute] = string
      end 
    end 
end
end 
hash
end 


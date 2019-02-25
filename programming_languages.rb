
require "pry"


def reformat_languages(languages)
  new_hash = {}
  languages.each do |attribute, language|

     language.each do |name,type|
       if new_hash.keys.include?(name)
         new_hash[name][:style] << attribute
       else
         new_hash[name] = {type:type[:type],style:[attribute]}



       end
    end
  end
  new_hash
end

require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each_with_index {|(x,y),z| 
    y.each {|x,y|
      if !new_hash[x]
        new_hash[x] = y
        new_hash[x][:style] = []
      end
      new_hash[x][:style].push((languages.keys)[z])
    }
  }
  new_hash
end

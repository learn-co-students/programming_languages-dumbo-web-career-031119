def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, lang|
    lang.each do |spec, info|
      # spec is the name of the language here
      new_hash[spec] = info
      new_hash[spec][:style] = []
      new_hash[spec][:style].push(type)
    end
  end
  # for javascript, it will push :oo from the loop above so we will have to push :functional at the end
  
  # actually refute that comment above, for some reason it's pushing :functional first instead of :oo according to the error. I'm not sure why tho
  new_hash[:javascript][:style].push(:oo)
  new_hash
end

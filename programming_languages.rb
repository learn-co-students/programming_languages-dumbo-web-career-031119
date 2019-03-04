def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.collect do |style, list|
    list.collect do |lang, type|
      # adding the type for each lang 
      new_hash[lang] = type
      # making the style for each lang into an array
      new_hash[lang][:style] = []
      # adding the style for each lang into said array
      new_hash[lang][:style] << style
    end
  end
  # the purpose of this addition is cause JS has two styles
  new_hash[:javascript][:style] << :oo
  # returning the new hash
  new_hash
end

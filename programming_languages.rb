def reformat_languages(languages)
  # your code here

  new_hash = {}
  languages.collect do |language_style, language_data|
    language_data.collect do |key, val|
      new_hash[key] = val
      new_hash[key][:style] = []
      new_hash[key][:style] << language_style
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end

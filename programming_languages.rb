def reformat_languages(languages)
  new_hash = {}
  languages.collect do |style,language_hash|
    language_hash.collect do |language, type_hash|
      if new_hash[language].is_a?(Hash)
        new_hash[language][:style].push(style)
      else
        language_hash[language][:style] = [style]
        new_hash[language] = language_hash[language]
      end
    end
  end
  new_hash
end

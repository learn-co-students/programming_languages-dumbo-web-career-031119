require 'pry'
def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, hash|
    hash.each do |k, v|
      new_hash[k] = v
      new_hash[k][:style] = []
      new_hash[k][:style] << style
    end
    new_hash[:javascript][:style] << :oo
  end
  new_hash
end

require'pry'

def reformat_languages(languages)
  hash={}
  languages.each do |style,language_list|
    
    #style = :oo or :functional
    #language_list = list of languages and their :type
    
    language_list.each do |language,type|
      
      #language = :ruby, :python, :java, etc
      #type = :type => "interpreted" or "compiled"
    #language=>{type,style: style}
    
       if hash[language].nil?
         hash[language]=type
         hash[language][:style]=[style]
    else 
      hash[language][:style] << style
      
      
end
end
end
hash
end
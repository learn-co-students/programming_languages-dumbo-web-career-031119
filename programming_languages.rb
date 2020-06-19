<<<<<<< HEAD
# I ended up having to take a look at the solution- my holder_arr didnt work but I see how to push the info when reformatting. I was passing everything but 1 so I had to look up ||= and it passed. I will have to look more into that syntax 
#


def reformat_languages(hash)
new_hash = {}
# holder_arr = []
  hash.collect do |style, bulk_info|
  # puts "#{style} < style"

  bulk_info.collect do |lang_name,type_hash|
  # puts "#{type_hash}< type_hash "
  new_hash[lang_name] ||= type_hash
  new_hash[lang_name][:style] ||= []
  new_hash[lang_name][:style] << style
  # new_hash[:styleG] << style
  # type_hash.collect do |type_title,type|

=======
def reformat_languages(hash)
new_hash = {}
# holder_arr = []
  hash.collect do |style, bulk_info| 
  puts "#{style} < style"

  bulk_info.collect do |lang_name,type_hash|
  puts "#{type_hash}< type_hash "
  new_hash[lang_name] = type_hash
  new_hash[lang_name][:style] = []
  new_hash[lang_name][:style] << style
  # new_hash[:styleG] << style
  # type_hash.collect do |type_title,type|
  
>>>>>>> 5822015db1da12a90ded25c2904ab8a9c215f0ac

  # end
  end
  end
  # puts "#{new_hash.values} << NEW HASH"
  new_hash
end

#!/usr/bin/env ruby
types = [:docx, :html]
puts 'Creating Documents'
types.each do |type|
  file_name = 'bin/jimiSmootResume.' + type.to_s
  puts file_name
  `pandoc -f markdown-yaml_metadata_block -t #{type.to_s} -o #{file_name} src/JimiSmootResume.md`
end

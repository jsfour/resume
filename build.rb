#!/usr/bin/env ruby

def run_pandoc type, file_name
  return `pandoc src/JimiSmootResume.md -o #{file_name}` if type == :pdf
  return `pandoc -f markdown-yaml_metadata_block -t #{type.to_s} -o #{file_name} src/JimiSmootResume.md`
end

types = [:docx, :html, :pdf]
puts 'Creating Documents:'
types.each do |type|
  file_name = 'bin/jimiSmootResume.' + type.to_s
  puts file_name
  run_pandoc type, file_name
end

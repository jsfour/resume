#!/usr/bin/env ruby
require 'uri'

def run_pandoc type, file_name
  return `pandoc src/JimiSmootResume.md -o #{file_name}` if type == :pdf
  return `pandoc -f markdown-yaml_metadata_block -t #{type.to_s} -o #{file_name} src/JimiSmootResume.md`
end

def build_link email, subject, message
  message = URI.escape(message) 
  return %[mailto:#{email}?subject=#{subject}&body=#{message}] #TODO: Move link generation into a gem
end

def build_readme email, subject
  file = IO.read('./src/README.md')
  message = IO.read('./src/email_template.md')
  file.gsub('{{EMAIL-LINK}}', %[[Email me to let me know if you have a position available](#{build_link(email, subject, message)})])
  IO.write('./README.md', file)
end

types = [:docx, :html, :pdf]
puts 'Creating Documents:'
types.each do |type|
  file_name = 'bin/jimiSmootResume.' + type.to_s
  puts file_name
  run_pandoc type, file_name
end




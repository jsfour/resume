#!/usr/bin/env ruby
require 'uri'
class Resume

  def build! file_types=[:docx]
    @types ||= []
    @created_files ||= []
    @source = "src/JimiSmootResume.md"
    puts 'Creating Documents:'
    file_types.each do |file_type|
      type = Type.new(file_type, "jimiSmootResume.#{file_type.to_s}")
      @types << type
      puts type.to_s + " created..."
      run_pandoc @source, type
    end
    build_readme 'jsfour@gmail.com', 'Job Opportunity', @types
  end

private
  def run_pandoc source, type
    return `pandoc #{source} -o #{type.file_name}` if type.file_type == :pdf
    return `pandoc -f markdown-yaml_metadata_block -t #{type.file_type.to_s} -o #{type.file_name} #{source}`
  end

  def build_link email, subject, message
    message = URI.escape(message) 
    return %[mailto:#{email}?subject=#{subject}&body=#{message}] #TODO: Move link generation into a gem
  end

  def build_readme email, subject, types=[]
    puts 'Building Readme File:'
    file_buffer = IO.read('./src/readme-template.md')
    message = IO.read('./src/email_template.md')
    file_buffer = file_buffer.gsub('{{RESUME-LINKS}}', build_type_links(types).join("\n"))
    file_buffer = file_buffer.gsub('{{EMAIL-LINK}}', build_link(email, subject, message)
    puts './README.md'
    IO.write('./README.md', file_buffer)
  end

  def build_type_links types
    links = []
    types.each do |type|
      links << "[Download A #{type.file_type.to_s.capitalize} Of My Resume](#{type.raw_github_location})"
    end
    return links
  end

  # To hold the types of file and their file names
  class Type < Struct.new(:file_type, :file_name)
    def repo_location
      return 'bin/#{file_name}'
    end

    def raw_github_location
      return "https://github.com/jsmootiv/resume/raw/master/" + repo_location
    end

    def to_s
      return repo_location
    end
  end

end

resume = Resume.new([:docx, :html, :pdf])
resume.build!





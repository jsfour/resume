#!/usr/bin/env ruby
require 'uri'
class Resume
  attr_accessor :types

  def build! file_types=[:docx]
    @types = []
    @created_files ||= []
    @source = "src/resume.md"
    puts 'Creating Documents:'
    file_types.each do |file_type|
      type = Type.new(file_type, "jimiSmootResume.#{file_type.to_s}")
      @types << type
      puts type.to_s + " created..."
      run_pandoc @source, type
    end
    email_template = IO.read('./src/email_template.md')
    email = Email.new('jsfour@gmail.com','Job Opportunity', email_template)
    build_readme email, @types
  end

private
  def run_pandoc source, type
    return `pandoc #{source} -o #{type.repo_location}` if type.file_type == :pdf
    return `pandoc -f markdown-yaml_metadata_block -t #{type.file_type.to_s} -o #{type.repo_location} #{source}`
  end

  def build_readme email, types=[]
    puts 'Building Readme File:'
    file_buffer = IO.read('./src/readme-template.md')
    file_buffer = file_buffer.gsub '{{RESUME-LINKS}}', build_type_links(types).join("\n")
    file_buffer = file_buffer.gsub '{{EMAIL-LINK}}', email.mailto_link 
    IO.write './README.md', file_buffer
    puts 'README.md created...'
  end

  def build_type_links types
    links = []
    types.each do |type|
      links << "- [Download a #{type.file_type.to_s.downcase} of my resume](#{type.raw_github_location})"
    end
    return links
  end

  class Email < Struct.new(:email_address, :subject, :message)
    def mailto_link
      escaped_message = URI.escape(message)
      return %[mailto:#{email_address}?subject=#{subject}&body=#{escaped_message}] #TODO: Move link generation into a gem
    end
  end

  # To hold the types of file and their file names
  class Type < Struct.new(:file_type, :file_name)
    def repo_location
      return 'bin/' + file_name
    end

    def raw_github_location
      return "https://github.com/jsmootiv/resume/raw/master/" + repo_location
    end

    def to_s
      return repo_location
    end
  end

end

resume = Resume.new
resume.build!([:docx, :html, :pdf])



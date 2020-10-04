require "stringex"
class Jekyll < Thor
  desc "new", "create a new post"
  method_option :prefix, :default => ""
  def new(*title)
    title = title.join(" ")
    date = Time.now.strftime('%Y-%m-%d')

    path = "_posts"
    if options[:prefix]
      path += "/#{options[:prefix]}"
    end
    filename = "#{path}/#{date}-#{title.to_url}.md"

    if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: article"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "categories:"
      post.puts "  - "
      post.puts "tags:"
      post.puts "  - "
      post.puts "---"
    end
  end
end
require 'sinatra'
require 'redcarpet'

set :public_folder, './tools/public'
set :port, 8003

get '/' do
  @html_content = render_markdown("CONTENTS.md")
  @index_link = false
  erb :markdown
end

get '/docs/:filename' do |filename|
  if filename.end_with?('.md')
    @html_content = render_markdown("docs/#{filename}")
    @index_link = true
    erb :markdown
  else
    'Invalid file type.'
  end
end

def render_markdown(filename)
  Redcarpet::Markdown.new(
    Redcarpet::Render::HTML,
    autolink: true,
    tables: true,
    fenced_code_blocks: true
  ).render(
    File.read(filename)
  )
end
require 'make_menu'

LOGO = '
╔═╗┌─┐┌─┐┬ ┬┬┬
║ ║└─┐│  ├─┤││
╚═╝└─┘└─┘┴ ┴┴┴
'.strip.bold.magenta

OPTIONS = {
  group_title_color: %i[magenta bold]
}

HIGHLIGHTS = {
  'browser' => :underline
}

MakeMenu.run do |menu|
  menu.options { OPTIONS }
  menu.highlights { HIGHLIGHTS }
  menu.header do
    puts
    puts LOGO.align_block :center
    puts '──── DOCS ────'.magenta.align :center
    puts
  end
end

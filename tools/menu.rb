require 'make_menu'

MakeMenu.run do |menu|
  LOGO = '
╔═╗┌─┐┌─┐┬ ┬┬┬
║ ║└─┐│  ├─┤││
╚═╝└─┘└─┘┴ ┴┴┴'.bold.magenta

  menu.header do
    puts LOGO.align_block :center
    puts '──── DOCS ────'.magenta.align :center
    puts
  end

  menu.options do
    {
      group_title_color: %i[magenta bold]
    }
  end

  menu.highlights do
    {
      'browser' => :underline
    }
  end
end

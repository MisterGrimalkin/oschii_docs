require 'make_menu'

MakeMenu.run do |menu|
  LOGO = '
╔═╗┌─┐┌─┐┬ ┬┬┬
║ ║└─┐│  ├─┤││
╚═╝└─┘└─┘┴ ┴┴┴'.bold.magenta

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

  menu.header do
    puts LOGO.align_block :center
    puts 'Reference Manual'.magenta.align :center
    puts
  end
end

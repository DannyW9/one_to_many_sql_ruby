require('pry-byebug')
require_relative('models/artist.rb')

artist1 = Artist.new({
  'name' => 'Eminem'
  })

artist1.save()

binding.pry

nil

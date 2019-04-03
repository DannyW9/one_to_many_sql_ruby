require('pry-byebug')
require_relative('models/artist.rb')

artist1 = Artist.new({
  'name' => 'Eminem'
  })

artist1.save()

artist2 = Artist.new({
  'name' => 'AC/DC'
  })

artist2.save()

artist1.delete()
# artist1.name = 'John'
# artist1.update()
# Artist.delete_all()

binding.pry

nil

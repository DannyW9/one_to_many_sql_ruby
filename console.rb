require('pry-byebug')
require_relative('models/artist.rb')
require_relative('models/album.rb')

artist1 = Artist.new({'name' => 'Eminem'})

artist1.save()

artist2 = Artist.new({'name' => 'AC/DC'})

artist2.save()

album1 = Album.new({
  'title' => 'The Marshall Mathers LP',
  'genre' => 'Hip-Hop',
  'artist_id' => "#{artist1.id}"
  })

album2 = Album.new({
  'title' => 'Revival',
  'genre' => 'Hip-Hop',
  'artist_id' => "#{artist1.id}"
  })

# artist1.delete()
# artist1.name = 'John'
# artist1.update()
# Artist.delete_all()

binding.pry

nil

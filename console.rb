require('pry-byebug')
require_relative('models/artist.rb')
require_relative('models/album.rb')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({'name' => 'Eminem'})

artist1.save()

artist2 = Artist.new({'name' => 'AC/DC'})

artist2.save()

album1 = Album.new({
  'title' => 'The Marshall Mathers LP',
  'genre' => 'Hip-Hop',
  'artist_id' => "#{artist1.id}"
  })

  album1.save()

album2 = Album.new({
  'title' => 'Revival',
  'genre' => 'Hip-Hop',
  'artist_id' => "#{artist1.id}"
  })

  album2.save()

  album1.title = 'Relapse'
  album1.update()

# artist1.delete()
# artist1.name = 'John'
# artist1.update()
# Artist.delete_all()

binding.pry

nil

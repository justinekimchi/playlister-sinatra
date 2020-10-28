# Add seed data here. Seed your database with `rake db:seed`
Artist.destroy_all
Song.destroy_all
Genre.destroy_all
SongGenre.destroy_all

a1 = Artist.create(name: 'Adele')
a2 = Artist.create(name: 'Beyonce')
a3 = Artist.create(name: 'Bon Iver')

s1 = Song.create(artist_id: a1.id, song_name: 'Hello')
s2 = Song.create(artist_id: a2.id, song_name: 'Crazy In Love')
s3 = Song.create(artist_id: a3.id, song_name: 'Perth')
s4 = Song.create(artist_id: a1.id, song_name: 'Set Fire to the Rain')

g1 = Genre.create(genre_name: 'Pop')
g2 = Genre.create(genre_name: 'R&B')
g3 = Genre.create(genre_name: 'Rock')
g4 = Genre.create(genre_name: 'Rap')

sg1 = SongGenre.create(song_id: s1.id, genre_id: g1.id)
sg2 = SongGenre.create(song_id: s2.id, genre_id: g2.id)
sg3 = SongGenre.create(song_id: s3.id, genre_id: g3.id)
sg4 = SongGenre.create(song_id: s4.id, genre_id: g1.id)

#SongGenre.create(song_id: Song.all.first.id, genre_id: Genre.all.first.id)
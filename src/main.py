import sql.test as api



print(api.execute("CALL addArtist('KKKKKKK', 'Francja')")) #1
dictio = api.execute("SELECT * FROM artists;")
for i in dictio:
    print(i['Name'], i['ID_country'], i['ID_points'], i['ID_song'])

print(api.execute("CALL deleteArtist('Krzysztof')")) #2
dictio = api.execute("SELECT * FROM artists;")
for i in dictio:
    print(i['Name'], i['ID_country'], i['ID_points'], i['ID_song'])
print('\n\n')

print(api.execute("CALL updatePeopleData('Michela', 'Pace','Miche', 'Pac')")) #10
dictio = api.execute("CALL readEveryone()") #6
for i, elem in enumerate(dictio):
    print(i+1, elem['Name'], elem['people.Name'], elem['Surname'], ' ',elem['songs.Name'], elem['Gendre'], elem['countries.Name'])
print('\n\n')
print(api.execute("CALL updatePeopleData('Miche', 'Pac', 'Michela', 'Pace')"))



print(api.execute("CALL updatePoints('Miki', 10)")) #11
dictio = api.execute("CALL readPoints()") #7
for i in dictio:
    print(i['Name'], i['Score'])
print('\n', api.execute("CALL readWinner()"), '\n')  #9
print(api.execute("CALL readBestTrio()"), '\n\n')  #4

print(api.execute("CALL updatePoints('Miki', 615)"))
dictio = api.execute("CALL readPoints()")
for i in dictio:
    print(i['Name'], i['Score'])
print('\n')



print(api.execute("CALL updateSongName('Miki', 'BBBBBB', 'AAAAAAA')")) #12

dictio = api.execute("CALL readSongs()") #8
for i in dictio:
    print(i['Gendre'], i['ilosc_piosenek'])
print('\n')

print(api.execute("CALL updateSongName('Miki', 'La venda', 'Dance-pop')"))
dictio = api.execute("CALL readCountries()") #5
for i in dictio:
    print(i['Name'], i['Ilosc_uczestnikow'])



print('\n\n')
dictio = api.execute("CALL readEveryone()")
for i, elem in enumerate(dictio):
    print(i+1, elem['Name'], elem['people.Name'], elem['Surname'], ' ',elem['songs.Name'], elem['Gendre'], elem['countries.Name'])

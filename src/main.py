import sql.test as api

#print(api.execute("CALL readWinner()"))  #wyświetlanie
#print(api.execute("CALL readBestTrio()"))  #wyświetlanie
##print(api.execute("CALL addArtist('Krzysztof', 'Francja', 0, 'Arcade')"))
##print(api.execute("CALL deleteArtist('Krzysztof')"))
#print(api.execute("CALL updatePoints('Miki', 10)"))
#print(api.execute("CALL updatePeopleData('Miche', 'Pac', 'Michela', 'Pace')"))

print(api.execute("SELECT * FROM artists;"))   #wyświetlanie
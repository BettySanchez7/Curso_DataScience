library(mongolite)


match <- mongo(collection = "match", db="match_games",
           url = "mongodb+srv://datascience:<password>@cluster0.seel2.mongodb.net/test")

match$count()

match$find('{"HomeTeam":"Real Madrid","Date":"2015-12-20"}')

match = mongo(collection = "mtcars", db = "match_games") 
match$insert(mtcars)

#Cerrando la base
match$disconnect()
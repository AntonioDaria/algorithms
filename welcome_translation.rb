# Welcome! level 8
def greet(language)
  database =
  {
    'english'=>'Welcome',
    'czech'=>'Vitejte',
    'danish'=>'Velkomst',
    'dutch'=>'Welkom',
    'estonian'=>'Tere tulemast',
    'finnish'=>'Tervetuloa',
    'flemish'=>'Welgekomen',
    'french'=>'Bienvenue',
    'german'=>'Willkommen',
    'irish'=>'Failte',
    'italian'=>'Benvenuto',
    'latvian'=>'Gaidits',
    'lithuanian'=>'Laukiamas',
    'polish'=>'Witamy',
    'spanish'=>'Bienvenido',
    'swedish'=>'Valkommen',
    'welsh'=>'Croeso'
  }
   if !database.has_key?(language)
     return "Sorry, I don't know your language."
   end


  database.each do |key, value|
    if key == language
      return value
    end
  end
end

puts greet("russian")

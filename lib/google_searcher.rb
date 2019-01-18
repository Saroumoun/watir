require 'launchy'



def check_if_user_gave_input
  abort("Veuillez rentrer une recherche après le nom du fichier") if ARGV.empty?
end

def get_search
  return searches = ARGV unless check_if_user_gave_input 
end

def do_search(searches)
  search = searches.join('+')
  Launchy.open("https://www.google.com/search?q=#{search}")
end

do_search(get_search)
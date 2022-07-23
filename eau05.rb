# frozen_string_literal: true

# Créez un programme qui détermine si une chaîne de caractère se trouve dans une autre.

# LES FONCTIONS
# -------------
def is_include(char_long, char_in)
  step = char_long.length - char_in.length
  x = 0
  longueur_char_in = char_in.length - 1
  is_in = false
  while x <= step
    ender = x + longueur_char_in
    if char_long[x] == char_in[0] && (char_long[x..ender] == char_in)
      is_in = true
      x = step
    end
    x += 1
  end
  is_in
end
# -------------

# LES ERREURS
# -------------
if ARGV.length != 2
  puts 'erreur'
  exit
end
# -------------

# LES DATA
# -------------
char1 = ARGV[0]
char2 = ARGV[1]
# -------------

# LA RESOLUTION
# -------------
result = if char1.length > char2.length
           is_include char1, char2
         else
           is_include char2, char1
         end
# -------------

# RESULTAT(S)
# -------------
puts result
# -------------

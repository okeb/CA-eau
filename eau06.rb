# Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères.
# Seule les lettres (A-Z, a-z) sont prises en compte.

# LES FONCTIONS
# -------------
def capitalize_step char
  abc_small = "abcdefghijklmnopqrstuvwxyz"
  abc_big   = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  not_found = true
  counter = 0

  while counter < 26 && not_found
    if char == abc_small[counter]
      char = abc_big[counter]
      not_found = false
    end
    counter += 1
  end
  char
end
# -------------

# LES ERREURS
# -------------
if ARGV.length != 1
  puts 'error'
  exit
end

if ARGV[0].match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) != nil
  puts 'error'
  exit
end
# -------------

# LES DATA
# -------------
char = ARGV[0]
# -------------

# LA RESOLUTION
# -------------
result = []
(0..(char.length - 1)).each do |l|
  if l.even?
    result.append(capitalize_step(char[l]))
  else
    result.append char[l]
  end
end
# -------------

# RESULTAT(S)
# -------------
puts result.join('')
# -------------

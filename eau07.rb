# Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères.
# Seule les lettres (A-Z, a-z) sont prises en compte.

# LES FONCTIONS
# -------------
def is_numeric char
  char.match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) != nil
end
def capitalize_step char
  abc_small = 'abcdefghijklmnopqrstuvwxyz'
  abc_big   = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
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

def downcase_step char
  abc_small = 'abcdefghijklmnopqrstuvwxyz'
  abc_big   = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  not_found = true
  counter = 0

  while counter < 26 && not_found
    if char == abc_big[counter] || char == abc_small[counter]
      char = abc_small[counter]
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
# -------------

# LES DATA
# -------------
# char = ARGV[0].tr("\r\n", '!')
char_cleaning = ARGV[0].sub("\n", ' ')
char = char_cleaning.sub("\t", ' ')
# -------------

# LA RESOLUTION
# -------------
result = []
(0..char.length).each do |l|
  if l.zero? || (l.positive? && char[l - 1] == ' ')
    result.append(capitalize_step(char[l]))
  else
    result.append(downcase_step(char[l]))
  end
end
# -------------

# RESULTAT(S)
# -------------
puts result.join ''
# -------------

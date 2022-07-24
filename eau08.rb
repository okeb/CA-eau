# Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.

# LES FONCTIONS
# -------------
def is_numeric char
  num_list = '0123456789'
  not_found = true
  counter = 0

  while counter < 10 && not_found
    if char == num_list[counter]
      not_found = false
      counter = 10
    end
    counter += 1
  end
  !not_found
end
# -------------

# LES ERREURS
# -------------
if ARGV.length != 1
  puts 'erreur'
  exit
end
# -------------

# LES DATA
# -------------
char = ARGV[0]
# -------------

# LA RESOLUTION
# -------------
result = true
(0..char.length).each do |l|
  if char[l] != nil
    result = false unless is_numeric char[l]
  end
end
# -------------

# RESULTAT(S)
# -------------
puts result.inspect
# -------------

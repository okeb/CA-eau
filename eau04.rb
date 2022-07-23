# Créez un programme qui affiche le premier nombre premier supérieur au nombre donné en argument.

# LES FONCTIONS
# -------------
def is_nbr_premier(number)
  return false if [0, 1].include? number

  somme = 0
  str_number = number.to_s
  (0..str_number.length).each do |x|
    somme += str_number[x].to_i
  end
  true_class_false_class = (number.to_i > 5) && (number[-1].to_i == 5 || number[-1].to_i.zero?)
  if (number.to_i > 2) && (number.to_i % 2).zero?
    false
  elsif (number.to_i > 3) && (somme % 3).zero? && true_class_false_class
    false
  else
    true
  end
end

def next_nbr_premier(x)
  not_found = true
  y = x.to_i
  while not_found
    y += 1
    not_found = false if is_nbr_premier y
    not_found = false if y == (x.to_i + 7)
  end
  y
end
# -------------


# LES ERREURS
# -------------
if ARGV.length != 1 || !ARGV[0].match?(/^[0-9]*$/)
  puts '-1'
  exit
end
# -------------


# LES DATA
# -------------
data = ARGV[0]
# -------------


# LA RESOLUTION
# -------------
result = next_nbr_premier data
# -------------


# RESULTAT(S)
# -------------
puts result
# -------------

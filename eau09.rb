# Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant.
# Min inclus, max exclus.


# LES FONCTIONS
# -------------
def is_numeric char
  char.match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) != nil
end

def nums_between_min_max(minimum, maximum)
  x = minimum.to_i
  list = []
  while x < maximum.to_i
    list.append(x.to_s)
    x += 1
  end
  list
end
# -------------

# LES ERREURS
# -------------
# if ARGV.length != 2 || !is_numeric(ARGV[0]) || !is_numeric(ARGV[1])
if ARGV.length != 2 || !is_numeric(ARGV[0]) || !is_numeric(ARGV[1])
  puts 'error'
  exit
end
# -------------

# LES DATA
# -------------
minimum = ARGV[0]
maximum = ARGV[1]
# -------------

# LA RESOLUTION
# -------------
result = if minimum < maximum
           nums_between_min_max(minimum, maximum)
         else
           nums_between_min_max(maximum, minimum)
         end
# -------------

# RESULTAT(S)
# -------------
puts result.join ' '
# -------------

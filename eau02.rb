# Créez un programme qui affiche ses arguments reçus à l’envers.

# LES FONCTIONS
# -------------
def inverse_arg tablo
  tablo_inverse = []
  tablo.each do |elem|
    tablo_inverse = [elem] + tablo_inverse
  end
  tablo_inverse + [nil]
end
# -------------


# LES ERREURS
# -------------
if ARGV.length.zero?
  puts 'erreur'
  exit
end
# -------------


# LES DATA
# -------------
data = ARGV
# -------------


# LA RESOLUTION
# -------------
data = inverse_arg data
# -------------


# RESULTAT(S)
# -------------
puts data
# -------------

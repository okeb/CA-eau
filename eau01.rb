# Créez un programme qui affiche toutes les différentes combinaisons de deux nombres entre 00 et 99
# dans l’ordre croissant.


# LES FONCTIONS
# -------------

# Génère la liste
def list_generator
  list = []
  dico = []

  (1..9899).each do |x|
    y = x.to_s.rjust(4, '0')

    next unless ("#{y[0]}#{y[1]}" != "#{y[2]}#{y[3]}") && !dico.include?(y)

    list.append("#{y[0]}#{y[1]} #{y[2]}#{y[3]}")

    dico.append(y).append("#{y[2]}#{y[3]}#{y[0]}#{y[1]}")
  end
  list
end
# -------------


# LES ERREURS
# -------------

# -------------


# LES DATA
# -------------

# -------------

# LA RESOLUTION
# -------------
list = list_generator.join(', ')
# -------------


# RESULTAT(S)
# -------------
puts list
# -------------


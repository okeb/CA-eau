# Créez un programme qui affiche toutes les différentes combinaisons possibles de trois chiffres dans l’ordre croissant,
# dans l’ordre croissant. La répétition est volontaire.


# LES FONCTIONS
# -------------

# verifie si combi est deja dans le tableau dico
def list_has_x_combination combi, dico
  allcombi = combi.to_s.split('').permutation.to_a.map { |n| n.join('') }
  allcombi.each do |c|
    return true if dico.include?(c)
  end
  return false
end

# verifie si les chiffres composant combi sont uniques
def has_uniq_elem combi
  return true if combi.to_s.split('').map { |n| n.to_i }.uniq.length == combi.to_s.length
  return false
end

# Génère la liste
def list_generator
  list = []
  (12..789).each do |x|
    x = x.to_s.rjust(3, '0')
    if has_uniq_elem(x) && !list_has_x_combination(x, list)
      list.append(x)
    end
  end
  return list.join(', ')
end
# -------------


# LES ERREURS
# -------------

# -------------


# LES DATA
# -------------
list = []
# -------------

# LA RESOLUTION
# -------------
list = list_generator()
# -------------


# RESULTAT(S)
# -------------
puts list
# -------------


# data
dico = []



# Créez un programme qui affiche le premier index d’un élément recherché dans un tableau.
# Le tableau est constitué de tous les arguments sauf le dernier.
# L’élément recherché est le dernier argument.
# Afficher -1 si l’élément n’est pas trouvé.

# LES FONCTIONS
# -------------
def is_numeric char
  char.match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) != nil
end

def find_key_in_list(key, list)
  indx = -1
  x = 0
  # (0..list.length).each do |x|
  while x <= list.length && indx == -1
    if key == list[x]
      indx = x
    end
    x += 1
  end
  indx
end
# -------------

# LES ERREURS
# -------------
# if ARGV.length != 2 || !is_numeric(ARGV[0]) || !is_numeric(ARGV[1])
if ARGV.length < 2
  puts 'error'
  exit
end
# -------------

# LES DATA
# -------------
clef = ARGV.pop
list = ARGV
# -------------

# LA RESOLUTION
# -------------
result = find_key_in_list(clef, list)
# -------------

# RESULTAT(S)
# -------------
puts result
# -------------

# Créez un programme qui trie une liste de nombres.
# Votre programme devra implémenter l’algorithme du tri par sélection.

# LES FONCTIONS
# -------------
def is_numeric(char)
  !char.match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/).nil?
end

def my_select_sort(list)
  list_sort = list
  list_list_length = list_sort.length

  (0..(list_list_length - 2)).each do |i|
    min = i
    ((i + 1)..(list_list_length - 1)).each do |j|
      if list_sort[j].to_i < list_sort[min].to_i
        min = j
      end
    end
    unless min == i
      c = list_sort[min].to_i
      list_sort[min] = list_sort[i].to_i
      list_sort[i] = c
    end
  end
  list_sort
end
# -------------

# LES ERREURS
# -------------
if ARGV.length >= 2
  (0..(ARGV.index(ARGV[-1]))).each do |i|
    unless is_numeric(ARGV[i])
      puts 'error'
      exit
    end
  end
else
  puts 'error'
  exit
end
# -------------

# LES DATA
# -------------
list = ARGV
# -------------

# LA RESOLUTION
# -------------
result = my_select_sort list
# -------------

# RESULTAT(S)
# -------------
puts result.join ' '
# -------------

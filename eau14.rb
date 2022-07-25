# Créez un programme qui trie les éléments donnés en argument par ordre ASCII.

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
      x = 0
      while list_sort[j][x].ord.to_i == list_sort[min][x].ord.to_i && x < (list_sort[j].to_s.length &&  list_sort[min].to_s.length)
        x += 1
      end
      if list_sort[j][x].ord.to_i < list_sort[min][x].ord.to_i
        min = j
      end
    end
    unless min == i
      c = list_sort[min]
      list_sort[min] = list_sort[i]
      list_sort[i] = c
    end
  end
  list_sort
end
# -------------

# LES ERREURS
# -------------
if ARGV.length.zero?
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

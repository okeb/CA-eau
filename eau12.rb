# Créez un programme qui trie une liste de nombres.
# Votre programme devra implémenter l’algorithme du tri à bulle.



# LES FONCTIONS
# -------------
def is_numeric(char)
  !char.match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/).nil?
end

def my_bubble_sort(list)
  list_sort = list
  is_finished = true
  while is_finished
    is_finished = false
    (1..list.index(list[-1])).each do |x|
      if list_sort[x - 1].to_i > list_sort[x].to_i
        c = list_sort[x - 1].to_i
        list_sort[x - 1] = list_sort[x].to_i
        list_sort[x] = c
        is_finished = true
      end
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
result = my_bubble_sort list
# -------------

# RESULTAT(S)
# -------------
puts result.join(' ')
# -------------

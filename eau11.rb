# frozen_string_literal: true
# Créez un programme qui affiche la différence minimum absolue entre deux éléments d’un tableau
# constitué uniquement de nombres. Nombres négatifs acceptés.


# LES FONCTIONS
# -------------
def is_numeric(char)
  !char.match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/).nil?
end

# @param [Array] list tableau des chiffres
# @return [Integer] plus petite différence entre les nombres de la listes
def return_min_diff_abs(list)
  idx_a = idx_b = x = 0
  mid_diff_abs = nil
  last_idx = list.length - 1
  while idx_a <= last_idx
    idx_b = idx_a + 1
    while idx_b <= last_idx
      diff_abs = list[idx_a].to_i - list[idx_b].to_i
      diff_abs *= -1 if diff_abs.negative?
      mid_diff_abs = diff_abs if mid_diff_abs.nil? || mid_diff_abs > diff_abs
      idx_b += 1
    end
    idx_a += 1
  end
  mid_diff_abs
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
result = return_min_diff_abs(list)
# -------------

# RESULTAT(S)
# -------------
puts result
# -------------

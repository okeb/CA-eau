# Créez un programme qui affiche le N-ème élément de la célèbre suite de Fibonacci.
# (0, 1, 1, 2) étant le début de la suite et le premier élément étant à l’index 0.

# LES FONCTIONS
# -------------
def fibonacci n
  n <= 1 ? n : fibonacci(n - 1) + fibonacci(n - 2)
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
data = ARGV[0].to_i
# -------------


# LA RESOLUTION
# -------------
# -------------


# RESULTAT(S)
# -------------
puts fibonacci data
# -------------

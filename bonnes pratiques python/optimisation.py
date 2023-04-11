import timeit

# Fonction non optimisée qui calcule la somme des n premiers nombres entiers
def somme(n):
    s = 0
    for i in range(1, n+1):
        s += i
    return s

# Fonction optimisée qui utilise la formule de la somme des n premiers nombres entiers
def somme_opt(n):
    return (n*(n+1))//2

# Mesure du temps d'exécution de chaque fonction
temps_somme = timeit.timeit(lambda: somme(1000000), number=100)
temps_somme_opt = timeit.timeit(lambda: somme_opt(1000000), number=100)

# Affichage des résultats
print("Temps d'exécution pour somme() :", temps_somme)
print("Temps d'exécution pour somme_opt() :", temps_somme_opt)

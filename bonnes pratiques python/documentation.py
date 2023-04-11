# Utilisation de docstrings pour fournir une documentation claire pour les fonctions

def add(a, b):
    """
    Cette fonction prend deux arguments et renvoie leur somme.
    :param a: Le premier nombre à ajouter
    :param b: Le deuxième nombre à ajouter
    :return: La somme de a et b
    """
    return a + b

# Affichage de la documentation de la fonction
print(add.__doc__)

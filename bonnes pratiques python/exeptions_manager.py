class ApplicationProcessingError(Exception):
    """Exception levée lorsqu'il y a une erreur de traitement d'application"""
    pass

def division(data):
    try:
        # traitement des données
        result = 100 / len(data)
        return result
    except ZeroDivisionError as e:
        # lever une exception personnalisée en cas d'erreur de traitement d'application
        raise ApplicationProcessingError("Erreur de traitement d'application : Division par zéro") from e

# Exemple d'utilisation de l'exception personnalisée
data = []
try:
    result = division(data)
    print(result)
except ApplicationProcessingError as e:
    print("Une erreur de traitement d'application s'est produite :", e)

# Articles de la plateforme Zerofiltre.tech

Ce projet contient l'ensemble du code source des exemples proposés dans les articles de la plateforme Zerofiltre.tech


## Pour les rédacteurs

Pour ajouter votre code source à ce projet :

1/ Créer un fork de ce projet d'articles zerofiltre:  Zerofiltre-Courses/articles.git, 

 Il s'agit du projet qui va contenir tous les articles zerofiltre, tu cliques sur fork, et le projet sera forké dans ton compte github à toi.


2/ Puis cloner ton fork

 2.1/ Dans le projet articles qui vient d'être créé dans ton compte github, clique sur le gros bouton vert pour le cloner.
Copie l'url https et rends toi dans ton terminal sur ton PC puis fais :

git clone
cd articles 

Copie le chemin vers ce dossier articles et garde le , on va l'utiliser pour la suite.

Tu peux entrer 
```
pwd
```

 pour obtenir le chemin courant


2.2/ Si ton projet démo (celui dont tu as parlé dans l'article) se trouve sur github, retourne sur github vers ce projet là , sinon passe à l'étape 2.3

Clone le dans ton PC 
```
git clone
```


2.3/ Copie le dossier créé par le clone dans articles en faisant : 

```
cp dossier_clone <Le_chemin_vers_articles_sauvegarde_plus_haut>
```

Retorune dans  :

`<Le_chemin_vers_articles_sauvegarde_plus_haut>` en faisant : 

```
cd <Le_chemin_vers_articles_sauvegarde_plus_haut>
```

Supprime l'ancien contexte git : 
```
rm -rf article_django/.git
```

Puis pousse 

```
git add . 
git commit -m "init article django"
git push -u origin main

```

3/ Puis faire une pull request vers ce repo: 

Ouvre  le projet articles qui se trouve dans ton compte github dans ton navigateur. 

Tu verras qu'il contient désormais le dossier `dossier_clone`. 

Clique sur **faire une pull request**. Cela va créer une demande de fusion de la branche main du fork articles de ton compte  vers la branche main du vrai projet articles de zerofiltre courses.

Et je recevrai et analyserai tes modifications. 

Si tout est OK, j'accepterai la fusion sinon tu vas devoir modifier en local ton fork, le pousser de nouveau. Et j'analyserai et ainsi de suite.

Écris-nous à info@zerofiltre.tech si le problème persite.


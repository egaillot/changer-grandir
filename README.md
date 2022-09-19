Ce dépôt contient les sources du site [Changer / Grandir](changer-grandir.org).

# Faire tourner le site sur une machine locale

Il convient d'avoir au préalable installé [Docker](https://www.docker.com/).

Lancer la commande suivante.

```bash
$ ./scripts/run_ruby.sh jekyll serve -w
```

Le site est alors accessible depuis un navigateur à l'adresse
`http://localhost:1968`.

Pour accéder au site depuis un autre port d'écoute, utiliser la variable
d'environnement `PORT`. Par exemple :

```bash
$ PORT=4807 ./scripts/run_ruby.sh jekyll serve -w
```

# Ajouter un article

Le site est construit avec [Jekyll](https://jekyllrb.com/). Les articles sont
stockés dans le répertoire `_posts`. Créer un fichier au format
[Markdown](https://daringfireball.net/projects/markdown/) dont le nom commence par la date au
format `YYYY-MM-DD-`, par exemple `2022-09-01-mon-article.md`. Renseigner le «
front matter » YAML avec les méta-informations suivantes :

```
---
title: [Le titre de l'article]
image: [Le chemin de l'image associée, par exemple /assets/images/20220901-mon_article.png]
image_title: [Le titre associé à l'image]
authors:
- [auteur 1]
- [auteur 2]
- …
---
```

Par convention, les noms des fichiers images sont précédés d'une date au format
`YYYYMMDD-`. Il est recommandé d'avoir une image dimensionnée à 640px par
480px.

Écrire ensuite l'article au format Markdown.

Une fois l'article reversé dans le dépôt Github, le déploiement de l'article
sur le site se fera automatiquement dans les minutes qui suivent.

Pour plus d'informations :
- https://jekyllrb.com/docs/posts/
- https://daringfireball.net/projects/markdown/

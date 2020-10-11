# DigiStart en ligne : instructions pour les formateurs

## Outils recommandés pour les cours

- [Google Meet](https://meet.google.com/) pour les visio-conférences.
- [Visual Studio Code](https://code.visualstudio.com/) pour l'édition de code.
- [Visual Studio Live Share](https://visualstudio.microsoft.com/fr/services/live-share/) pour le travail collaboratif en ligne sur le code.
- [Excalidraw](https://excalidraw.com/) pour faire des dessins ou des diagrammes en l'absence d'un tableau blanc physique.
- [Git](https://git-scm.com/) pour sauver la progression des apprenants sur les exercices.

## Organisation des cours

### Visio-conférence

Pour les sessions que vous dirigerez, créez des évènements récurrents sur [Google Agenda](https://calendar.google.com/) en y associant une visio-conférence Google Meet.

Pour les apprenants ne possédant pas de compte Google, il est possible que leur accès se fasse sur demande au moment du chargement de la visio-conférence : **il est donc préférable que les formateurs les créent eux-mêmes** car ces demandes sont envoyées à la personne qui a créé la réunion en ligne.

### Exercices

Les exercices se feront sur Visual Studio Code lors de sessions collaboratives lancées avec l'extension Live Share et les progrès devront être sauvegardés sur une branche portant le nom du groupe, par exemple `online-20DSH07`.

#### Préparer les répertoires

Chaque session Live Share devra être lancée sur le répertoire de la session en cours (par exemple `session1`), mais il faut d'abord créer des sous-répertoires de travail pour le formateur et les apprenants pour que chacun puisse travailler avec ses propres fichiers.

Pour cela, utilisez le script à votre disposition selon votre plateforme : [setup.bat](setup.bat) pour Windows ou [setup.sh](setup.sh) pour macOS et Linux.

Par exemple depuis le répertoire `session1`, exécutez le script avec les prénoms des apprenants en arguments (de préférence, écrivez tout en minuscules et sans accent) :

```bash
# Windows
..\online\setup.bat frank amina joseph sarah

# macOS/Linux
sh ../online/setup.sh frank amina joseph sarah
```

Le répertoire de travail du formateur sera créé automatiquement sous le nom `konexio`. Cinq répertoires seront donc créés dans `session1` : `konexio`, `frank`, `amina`, `joseph` et `sarah` avec les fichiers des exercices copiés dans chacun de ces répertoires.

#### Lancer une session collaborative sur Live Share

Suivez les instructions de la [documentation officielle](https://docs.microsoft.com/en-us/visualstudio/liveshare/use/vscode#share-a-project).

[Un serveur local](https://docs.microsoft.com/en-us/visualstudio/liveshare/use/vscode#share-a-server) sera également nécessaire pour que les apprenants puissent visualiser le résultat de leur code dans un navigateur. Si vous n'avez pas de solution, suivez les instructions de [la section ci-dessous](#lancer-un-serveur-local).

#### Lancer un serveur local

Pré-requis :

- Node.js
- npm

D'autres solutions existent, mais nous recommandons d'installer l'outil [serve](https://www.npmjs.com/package/serve) :

```bash
npm i -g serve
```

Pour lancer le serveur dans le répertoire courant, il suffit de faire :

```bash
serve
```

Le port par défaut est `5000`. Pour le changer, utilisez l'option `--listen` :

```bash
# Pour écouter le port 8888.
serve --listen 8888

# Ou en plus court...
serve -l 8888
```

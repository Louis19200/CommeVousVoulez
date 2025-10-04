# Génération et Hébergement de Documentation API avec Docker

Ce projet utilise Docker pour générer et héberger une documentation API statique à l'aide de Redocly CLI et Nginx.

## Prérequis

*   Docker
*   Docker Compose

## Utilisation

1.  Assurez-vous d'avoir un fichier `openaAPI.yaml` dans le répertoire `src`.
2.  Construisez l'image Docker :

    ```bash
    docker-compose build
    ```

3.  Lancez le service :

    ```bash
    docker-compose up
    ```

    Cela générera la documentation et la servira sur le port 80. Incroyable !

4.  Pour surveiller les changements dans `openapi.yaml` et reconstruire automatiquement la documentation, utilisez :

    ```bash
    docker-compose up --watch
    ```

    Et là la magie noire opère !

## Commandes Utiles

*   `docker-compose build`: Construit l'image Docker.
*   `docker-compose up`: Lance le service.
*   `docker-compose up --watch`: Lance le service et surveille les changements pour reconstruire automatiquement.
*   `docker-compose down`: Arrête et supprime les conteneurs.
*   `ctrl + c`: Arrête le conteneur

### Ce guide vous a été offert par Louis, n'hésitez pas à lui mettre une bonne note ;)
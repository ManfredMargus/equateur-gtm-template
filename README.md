# Equateur Analytics · modèle Google Tag Manager

Modèle officiel de balise Google Tag Manager pour [Equateur Analytics](https://www.equateur.org), la mesure d'audience sans cookie, hébergée en France et conçue pour l'exemption de consentement de la CNIL.

*Official Google Tag Manager tag template for Equateur Analytics, a cookieless, French-hosted web analytics tool. It loads `https://app.equateur.org/e.js` and sends custom events to it.*

## Ce que fait le modèle

Deux types de balise, au choix dans le même modèle :

| Type | Déclencheur | Effet |
|---|---|---|
| **Installation** | All Pages | Charge `https://app.equateur.org/e.js` pour le domaine indiqué. Pages vues, sources, temps d'engagement ; clics téléphone, email, téléchargements et liens sortants (désactivable) ; changements d'adresse des applications monopage. |
| **Événement** | Celui de votre choix (envoi de formulaire, événement du `dataLayer`…) | Envoie un événement nommé, avec un montant et des détails facultatifs, à compter comme objectif dans Equateur Analytics. |

Un événement envoyé avant le chargement du script est mis en attente, puis envoyé juste après la page vue.

## Autorisations demandées

- **Injecter des scripts** : `https://app.equateur.org/*` seulement.
- **Accéder aux variables globales** : `window.equateur` (la fonction d'envoi) et `window.equateurQ` (la file d'attente).

Le modèle ne lit ni n'écrit aucun cookie et n'accède pas au `dataLayer` : il charge le script et lui passe vos événements, rien de plus.

## Documentation

Pas à pas complet, objectifs et exemples : <https://www.equateur.org/documentation/google-tag-manager/>

## Licence

Apache 2.0, voir [LICENSE](LICENSE).

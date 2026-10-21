___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Equateur Analytics Tag",
  "categories": [
    "ANALYTICS",
    "CONVERSIONS"
  ],
  "brand": {
    "id": "brand_dummy",
    "displayName": "Equateur Analytics",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAMAAADVRocKAAAAeFBMVEUAAAAPJ0cPKEgUNlkVOVwQKkslZpM1lMo2mc8ocJ4SMFIgWoQ6o9s8qeMma5gyjMA7p+A2mdAWPGAaRmwfVX4ob50tgLEPJ0greKccS3MiX4oYQWYwh7ofV4AjYYwtfq44ntYrd6cmapc5oNcSL1Exi740kscbSW/mO2uKAAAAAXRSTlMAQObYZgAAAyBJREFUaN7VmmGfoiAQxjMlN2WKyry13My27r7/NzwtTTRhZir2d8e7ZeH5gw8SMziZPBTvhTJByyvqBMbr8lbEe+SNiPfJjyPeq/9IeLf+kPB+/T7Bhb5OcKOvEVwDXOnfCe4Anmv9nwGwOkz9QHAJnOZiFn7MI4eAWALAYsoCcPSjJSgFqzVrCpzGG6mqIhNngLjWV7BwBtjCFZByFhIHINIbYMlZRxzA1ePa5cARIFhdAUpuHAFui+i6jH45ASQNAGaOZjCDBvBJn4AJILJdvB+uxs8WkA/+M11/HRLD0hoH+IUEdSz7q0XkLSDsi0WLlQKZr+kAUdZSAMseIQpbwLGnFaVwbZ5HZMD+eJOCVO+zbmqrZZQ9jGZYawd8qbaU2tPOZFsLO+35z9pqOJEBcTtUJRcdYXevhW2nv5Nt9fgmOAroxqoTth3gvt2Jg4SxeSGAIISOUDRON1tdb7uLtlJruSEDpmXXrVJLruNttjptuxNZrrR2uSAD9GdU9ZRp4ov7VtcMVkRZ8a2NQ6nYowPOl15XkGE6LzWoLBbFbwl6IwgDBsA79AD1Swdg+7uqKT0OYL0a9EeL/MMC9GymFIPF5u26ZzOlxB4PMLAZnUAYMAEPNiOA0uMCeDabLLYAWDYbLbb9JhNtllaLbQCGzWaLracKus1mi60Ass3SbLEVQLbZYrH94EV9m2XsPQcg2myzGDk60my2WYwAaDbbLEYAJJutFmOna5LNsfc8gGCz3WI0PsBttluMAoIPjIAFbFiEM0cAaNCMAfbISh0/szMAyErFo340CLRPAZ0ADpguLAAo0LQFHsbqZ/mh/hGP+Qlxcmx8nSnJLwJAizwG+ksf702J9A0+wzfqMBFgekgnSnaQBBDb0RV0pvSlJUOi4uEhwYVgABlQpwuGBhOTm9R0TlSoXkSWU5On5HzR+dTFlCBL2vPhALxpltaJ5arIS0JPbLLSmll5CcNlkbDSmrz0vvD9Myc3zgawi+MLkCeuQP41wM9cc7m/qPv/7zLdX/e6v7B2f+Xu/qMB9589uP9w442EiaU4ln+d8aD2F7aylIYaKXt7AAAAAElFTkSuQmCC"
  },
  "description": "Mesure d'audience sans cookie, hébergée en France, conçue pour l'exemption de consentement de la CNIL. Une balise « Installation » sur toutes les pages, puis une balise « Événement » par objectif (formulaire, devis, achat…). Documentation : https://www.equateur.org/documentation/google-tag-manager/",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "mode",
    "displayName": "Type de balise",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "installation",
        "displayValue": "Installation (déclencheur All Pages)"
      },
      {
        "value": "evenement",
        "displayValue": "Événement (un objectif : formulaire, devis, achat…)"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "installation",
    "help": "Une seule balise « Installation », sur le déclencheur All Pages. Puis une balise « Événement » par action à compter, sur le déclencheur de votre choix."
  },
  {
    "type": "TEXT",
    "name": "site",
    "displayName": "Domaine du site",
    "simpleValueType": true,
    "valueHint": "exemple.fr",
    "help": "Le domaine tel qu'ajouté sur Equateur Analytics, sans « www » (exemple.fr). Les sous-domaines comptent dans le même site.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^\\s*(\\{\\{.+\\}\\}|(https?://)?[A-Za-z0-9.-]+\\.[A-Za-z]{2,}/?)\\s*$"
        ],
        "errorMessage": "Un domaine, par exemple exemple.fr."
      }
    ],
    "enablingConditions": [
      {
        "paramName": "mode",
        "paramValue": "installation",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "reglages",
    "displayName": "Réglages",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "auto",
        "checkboxText": "Compter tout seul les clics téléphone, email, téléchargements et liens sortants",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Événements « Clic téléphone », « Clic email », « Téléchargement » et « Lien sortant ». Ce ne sont des conversions que si vous en faites des objectifs."
      },
      {
        "type": "CHECKBOX",
        "name": "spa",
        "checkboxText": "Compter chaque changement d'adresse comme une page vue (applications monopage)",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Laissez coché, et n'ajoutez pas de déclencheur « Modification de l'historique » : le script compte déjà chaque changement d'adresse."
      },
      {
        "type": "TEXT",
        "name": "api",
        "displayName": "Adresse de collecte par votre domaine (facultatif)",
        "simpleValueType": true,
        "valueHint": "/api/e",
        "help": "Seulement si un relais est installé sur votre domaine (Réglages du site, Collecte par votre domaine). Laissez vide sinon."
      },
      {
        "type": "CHECKBOX",
        "name": "local",
        "checkboxText": "Mesurer aussi sur localhost (pour un essai en local)",
        "simpleValueType": true,
        "defaultValue": false
      }
    ],
    "enablingConditions": [
      {
        "paramName": "mode",
        "paramValue": "installation",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "nom",
    "displayName": "Nom de l'événement",
    "simpleValueType": true,
    "valueHint": "Demande de devis",
    "help": "Le nom exact de l'événement de votre objectif sur Equateur Analytics. Jamais d'email, de nom, de téléphone ni de numéro de commande.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "STRING_LENGTH",
        "args": [
          1,
          60
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "mode",
        "paramValue": "evenement",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "valeur",
    "displayName": "Montant en euros (facultatif)",
    "simpleValueType": true,
    "valueHint": "{{DLV · Montant commande}}",
    "help": "Un nombre (49.90) ou un texte (\"49,90\"), souvent une variable de couche de données comme ecommerce.value. Laissez vide si l'objectif n'a pas de montant.",
    "enablingConditions": [
      {
        "paramName": "mode",
        "paramValue": "evenement",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "proprietes",
    "displayName": "Détails (facultatif)",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Détail",
        "name": "cle",
        "type": "SELECT",
        "selectItems": [
          {
            "value": "categorie",
            "displayValue": "categorie"
          },
          {
            "value": "etape",
            "displayValue": "etape"
          },
          {
            "value": "fichier",
            "displayValue": "fichier"
          },
          {
            "value": "formule",
            "displayValue": "formule"
          },
          {
            "value": "methode",
            "displayValue": "methode"
          },
          {
            "value": "offre",
            "displayValue": "offre"
          },
          {
            "value": "vers",
            "displayValue": "vers"
          }
        ],
        "isUnique": true
      },
      {
        "defaultValue": "",
        "displayName": "Valeur",
        "name": "valeur",
        "type": "TEXT"
      }
    ],
    "newRowButtonText": "Ajouter un détail",
    "help": "Des valeurs courtes et jamais personnelles, par exemple formule : annuelle. Seuls ces détails sont gardés dans les statistiques.",
    "enablingConditions": [
      {
        "paramName": "mode",
        "paramValue": "evenement",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Equateur Analytics : mesure d'audience sans cookie. Ce modèle charge https://app.equateur.org/e.js,
// ou envoie un événement à ce script. Il ne lit ni n'écrit aucun cookie.
const callInWindow = require('callInWindow');
const createArgumentsQueue = require('createArgumentsQueue');
const encodeUriComponent = require('encodeUriComponent');
const getType = require('getType');
const injectScript = require('injectScript');
const makeString = require('makeString');

const SCRIPT = 'https://app.equateur.org/e.js';

// « https://www.Exemple.fr/ » devient « exemple.fr », le domaine tel qu'ajouté sur Equateur Analytics.
function domaine(valeur) {
  let d = makeString(valeur).trim().toLowerCase();
  if (d.indexOf('://') !== -1) d = d.split('://')[1];
  d = d.split('/')[0];
  if (d.indexOf('www.') === 0) d = d.slice(4);
  return d;
}

function texte(valeur) {
  return valeur == null ? '' : makeString(valeur).trim();
}

// window.equateur met en attente les événements envoyés avant le chargement du script (dans window.equateurQ) :
// ils partent juste après la page vue. Une fois chargé, le script remplace cette fonction et vide la file.
createArgumentsQueue('equateur', 'equateurQ');

if (data.mode === 'evenement') {
  const options = {};
  if (getType(data.valeur) === 'number') options.value = data.valeur;
  else if (texte(data.valeur) !== '') options.value = texte(data.valeur);

  const props = {};
  let avecProps = false;
  (data.proprietes || []).forEach(function (ligne) {
    if (!ligne.cle || texte(ligne.valeur) === '') return;
    props[ligne.cle] = texte(ligne.valeur);
    avecProps = true;
  });
  if (avecProps) options.props = props;

  callInWindow('equateur', texte(data.nom), options);
  data.gtmOnSuccess();
} else {
  let url = SCRIPT + '?site=' + encodeUriComponent(domaine(data.site));
  if (data.auto === false) url += '&auto=off';
  if (data.spa === false) url += '&spa=off';
  if (texte(data.api) !== '') url += '&api=' + encodeUriComponent(texte(data.api));
  if (data.local === true) url += '&local';
  // Le script ne se charge qu'une fois par page, même si la balise se déclenche plusieurs fois.
  injectScript(url, data.gtmOnSuccess, data.gtmOnFailure, url);
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://app.equateur.org/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "equateur"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "equateurQ"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Installation, réglages par défaut
  code: |-
    let adresse;
    mock('injectScript', function (url, ok) { adresse = url; ok(); });
    runCode({ mode: 'installation', site: 'exemple.fr', auto: true, spa: true, api: '', local: false });
    assertThat(adresse).isEqualTo('https://app.equateur.org/e.js?site=exemple.fr');
    assertApi('createArgumentsQueue').wasCalledWith('equateur', 'equateurQ');
    assertApi('gtmOnSuccess').wasCalled();
- name: Installation, domaine nettoyé et réglages coupés
  code: |-
    let adresse;
    mock('injectScript', function (url, ok) { adresse = url; ok(); });
    runCode({ mode: 'installation', site: ' https://www.Exemple.fr/ ', auto: false, spa: false, api: '/stats/api/e', local: true });
    assertThat(adresse).isEqualTo('https://app.equateur.org/e.js?site=exemple.fr&auto=off&spa=off&api=%2Fstats%2Fapi%2Fe&local');
- name: Installation, échec du chargement
  code: |-
    mock('injectScript', function (url, ok, echec) { echec(); });
    runCode({ mode: 'installation', site: 'exemple.fr', auto: true, spa: true });
    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();
- name: Événement simple
  code: |-
    const appels = [];
    mock('callInWindow', function (fn, nom, options) { appels.push([fn, nom, options]); });
    runCode({ mode: 'evenement', nom: ' Demande de devis ', valeur: '', proprietes: [] });
    assertThat(appels).isEqualTo([['equateur', 'Demande de devis', {}]]);
    assertApi('gtmOnSuccess').wasCalled();
- name: Événement avec montant et détails
  code: |-
    const appels = [];
    mock('callInWindow', function (fn, nom, options) { appels.push([fn, nom, options]); });
    runCode({ mode: 'evenement', nom: 'Achat', valeur: 49.9, proprietes: [{ cle: 'formule', valeur: 'annuelle' }, { cle: 'offre', valeur: '' }] });
    assertThat(appels).isEqualTo([['equateur', 'Achat', { value: 49.9, props: { formule: 'annuelle' } }]]);
- name: Événement avec un montant en texte
  code: |-
    const appels = [];
    mock('callInWindow', function (fn, nom, options) { appels.push([fn, nom, options]); });
    runCode({ mode: 'evenement', nom: 'Don', valeur: '49,90' });
    assertThat(appels).isEqualTo([['equateur', 'Don', { value: '49,90' }]]);
setup: |-
  mock('createArgumentsQueue', function () {});


___NOTES___

Modèle officiel d'Equateur Analytics (https://www.equateur.org), maintenu par son éditeur.
Source : https://github.com/ManfredMargus/equateur-gtm-template

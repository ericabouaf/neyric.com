title: Ouverture de data.gouv.fr
date: 2011-12-10 15:13:42
tags:
  - opendata
  - opendata gouv données-publiques
---

Petite révolution ! En tout cas veritable opportunité...

La plateforme française des données publiques [Data.gouv.fr](http://www.data.gouv.fr/) ce lundi 5 décembre 2011\. C’est un événement dans le monde de l’open data. C’est aussi un événement pour les citoyens qui vont bénéficier d’un supplément de transparence. Les données publiques disponibles sur Data.gouv.fr sont réutilisables librement et **gratuitement**, sous licence ouverte (_open licence_).

**Qu'est-ce que Etalab ?**

Sylvain Naudet

* http://www.dailymotion.com/etalab

34k jeux de données (ports, aéroports, gares, trains, données géographique)

SNCF, IGN

**Avantages :**

* transparence vs opacité (protection sociale)
* motifs économiques (déchets, ventes de données entre ministère)
* cohérence nationale

**Qu'est-ce qu'on en fait ? / C'est pour qui**

* Une autre forme de journalisme: Le Datajournalisme !

Britaniques: The telegraph a sorti un scoop sur les notes de frais britannique

* applications :

Prix pour les meilleurs applications à partir des données du portail.

* nouveaux services citoyens : "Imaginer des services que l'État n'a pas encore créé"

Journaliste, Entreprises, et tous les citoyens !

**Données Locale :**

* Ouverture d'un [site de données sur Paris](http://opendata.paris.fr/)

[](http://opendata.paris.fr/)* Rennes a fait un concours de services à partir de ses données !
* D'autres villes l'ont déjà fait

**Prochaines étapes :**

* Le format :  CSV.... Bon c'est une question technique. Formats ouverts et interopérables. Linked Data : aggreger avec d'autres données... SPARQL

C'est l'occasion de faire une ontology nationale !!!

* Interaction avec les citoyens

NKM a souligné dans [cette vidéo](http://www.dailymotion.com/video/xms553_nkm-salue-l-ouverture-de-data-gouv-fr_news). Même si je suis loin d'être d'accord sur tous les points avec elle, son effort pour la démocratisation de l'idée de données publiques est louable. (je l'ai vu en parler plusieurs fois à la télé)

Je salue au passage l'éloquence d'Henri Guaino pour l'écriture de [ce discours de Nicolas Sarkozy](http://www.dailymotion.com/video/xlg7oq_open-data-un-choix-sans-retour_news?ralg=behavior-metadata#from=playrelon)

à reformuler :

_Au niveau étatique, Data.gouv.fr rejoint une famille qui comprend par exemple[Data.co.uk](http://data.gov.uk/) pour le Royaume-Uni, [Data.gov.be](http://data.gov.be/fr) pour la Belgique, [Data.gov.ma](http://data.gov.ma/) pour le Maroc, [Data.gov](http://www.data.gov/) pour les Etat-Unis ou encore [Gov.hk](http://www.gov.hk/en/theme/psi/welcome/) pour Hong-Kong. Très certainement, de nouveaux membres vont encore venir l’étoffer._

Article beaucoup plus technique que le précédent.

* La Licence: http://www.data.gouv.fr/Licence-Ouverte-Open-Licence

* Où est la base de données de tous les documents en lignes ?

* Liste des "producteurs": http://www.data.gouv.fr/Producteurs

* Faceted browsing : bon point !

* Toutes les données ne sont pas gratuites ? http://www.data.gouv.fr/donnees/view/Rejets-de-polluants-dans-l'air-par-les-principaux-%C3%A9metteurs-industriels-(installations-class%C3%A9es-pour-30377622?xtmc=&amp;xtcr=1

* Certains flux atom (notés au format XML) proviennent en fait de http://www.vie-publique.fr/ (Spip)

Exploration des formats :

* Facette Format: la somme du nombre de doc par format ne colle pas avec le nombre total de documents ! ?

* Format RDF: 1 seul fichier: DONNÉES COMPLÈTES DU CONTENU DE LA BNF

26 Mo.  et encore ! un zip avec une extension rdf. il faut enlever l'extensio .RDF avant de le dezzipper.

rdfdumpdatabnfoctobre2011.zip-fr.RDF -&gt; rdfdumpdatabnfoctobre2011.zip

skos="http://www.w3.org/2004/02/skos/core#"

xfoaf="http://www.foafrealm.org/xfoaf/0.1/"

foaf="http://xmlns.com/foaf/0.1/

rdagroup2elements="http://RDVocab.info/ElementsGr2/

dc="http://purl.org/dc/terms/

ah et si ! Ils ont quand même créer leur ontology : bnf-onto="http://data.bnf.fr/ontologie/"

* Format SHP : marrant des données vectorielles géolocalisés. Shapefile... qu'est-ce que c'est que ce truc ? ArcGIS Explorer is a free GIS Viewer. Ah c'est sous Windows. Je peux pas tester pour l'instant...

Télécharger Arc Explorer : http://www.esri.com/software/arcgis/explorer/arcexplorer.html

* Des fichiers XML mon cul :

http://www.vie-publique.fr/spip.php?page=rdp_viepubliquefr_chronoannuelle_atom&amp;annee=2000

J'ouvre le fichier en me disant: "C'est cool un flux Atom, je vais avoir tous les évenements datés situés sur une Timeline". Eh non ! Par la magie d'un tag &lt;content type="html"&gt;, tout le contenu intéressant est en fait en HTML !

Autre essai: http://www.data.gouv.fr/var/download/etalab_cs1100504_stock_20111003-1003.zip-fr.XML

J'obtiens une salle erreur car c'est encore un fichier zip ! Le coupable : Ministère du Travail, de l'Emploi et de la Santé

title: Bluetooth Juggling Ball
tags:
- ball
- bluetooth
categories:
- [Projects, Bluetooth Juggling Ball]
- [Hobbies, Juggling]
date: 2006-12-29 23:42:19
lang: fr
---

# Bluetooth Juggling Ball

**_(ou "Balle de jonglage Bluetooth" mais c'est moins classe...)_**

<!-- Raz-le-bol -->
_Raz-le bol !

Cette année encore, le Père Noël a gâté les joueurs de jeux vidéos

...avec les sorties de plusieurs consoles HighTech.

Et pour les jongleurs ?

Rien !

Où sont mes balles du futur ??_

<!-- Summary -->
La sortie de la Wii a relancé mon interêt pour rechercher des balles de jonglages ayant plus ... d'interactivité !

Après une tentative rigolote mais peu fructueuse utilisant des caméras sur IP Axis et des algo de détection de balles,

j'ai essayé "d'adapter" l'interaction de la Wii au jonglage.

C'est parti ! Le principe est simple, on transforme une balle en accéléromètre bluetooth !

Charabia ? Mais non... 

Accéléromètre: capteur qui mesure l'accélération suivant 3 axes.

Bluetooth: Système de communication sans fil (pour envoyer les mesures au PC.)

Bon comme c'est un prototype et que je dois valider différents points avant de me lancer

dans une fabrication en série, j'ai fait au plus simple ! 

Voici les pièces que j'ai utilisé :

<table border="1">
<tbody><tr>
 <th>Nom</th>
 <th>Prix</th>

 <th>Où trouver ?</th>
 <th>Commentaires</th>
</tr>
<tr>
 <td>WiTilt v2.5</td>
 <td>78.57 euros</td>
 <td>[En vente chez Spark Fun](http://www.sparkfun.com/commerce/product_info.php?products_id=254)</td>

 <td>Ceci est un module Accéléromètre Bluetooth.
Il a déjà  tout ce qu'il nous faut !</td>
</tr>
<tr>
 <td>Balle de jonglage</td>
 <td>5.5 euros</td>
 <td>Votre Magasin de jonglage préféré !</td>
 <td>De préférence pas trop sentimentale...</td>

</tr>
<tr>
 <td>Pile 9V</td>
 <td>4.10 euros (argl!)</td>
 <td>N'importe où !</td>
 <td></td>
</tr>
<tr>
 <td>Un régulateur de tension 5V</td>

 <td>&lt; 1 euro</td>
 <td>N'importe quel magasin d'électronique</td>
 <td>par exemple un 78L05</td>
</tr>
<tr>
 <td>Un connecteur pour pile 9V</td>
 <td>0 euro</td>

 <td>Récupéré sur un vieux réveil ou Walkman</td>
 <td>
</td></tr>
<tr>
 <td>Un connecteur 2pin</td>
 <td>0 euro</td>
 <td>Récupéré sur un viel ordinateur</td>
 <td>

</td></tr>
<tr>
 <td>Morceau de papier bulle</td>
 <td>0 euro</td>
 <td>D'un colis reçu ?</td>
 <td>
</td></tr>
</tbody></table>

## Réalisation :

<!-- Photos -->

![](/images/posts/bluetooth-juggling-ball/bjb_01_ball.jpg)

Prendre une balle de jonglage.

_Prêt à  sacrifier une balle phospho de 80mm ?_

![](/images/posts/bluetooth-juggling-ball/bjb_02_hole.jpg)

Faire une fente.

_L'éventrer à  l'aide d'un couteau sans vous couper._

![](/images/posts/bluetooth-juggling-ball/bjb_03_pacman.jpg)

_Ca ressemble à PacMan vous trouvez pas ?_

![](/images/posts/bluetooth-juggling-ball/bjb_04_enlarge.jpg)

La fente doit être assez large pour que vous puissiez y glisser la carte...

![](/images/posts/bluetooth-juggling-ball/bjb_05_witilt.jpg)

...WiTilt.

![](/images/posts/bluetooth-juggling-ball/bjb_06_powersupply.jpg)

Voici le cordon d'alimentation, avec son connecteur pour pile 9V et le connecteur 2pin.

![](/images/posts/bluetooth-juggling-ball/bjb_07_78L05.jpg)

Le 78L05 est un régulateur de tension 5V pour convertir le 9V de la pile en 5V (requis par le WiTilt).

![](/images/posts/bluetooth-juggling-ball/bjb_08_78L05back.jpg)

Pour le cablage je vous laisse vous référer à la datasheet... (c'est pas dur !)

![](/images/posts/bluetooth-juggling-ball/bjb_09_allyouneed.jpg)

Et voilà ! Vous avez tout ce qu'il faut !

![](/images/posts/bluetooth-juggling-ball/bjb_10_feedhim.jpg)

Glisser le papier bulle dans la balle.

_Ettoufer le PacMan avec le papier bulle._

![](/images/posts/bluetooth-juggling-ball/bjb_11_battery.jpg)

Introduire la pile 9V dans l'autre partie de la balle.

![](/images/posts/bluetooth-juggling-ball/bjb_12_slot.jpg)

Il doit rester de la place pour glisser le module entre le papier bulle et la pile.

![](/images/posts/bluetooth-juggling-ball/bjb_13_running.jpg)

Brancher le module.

_Oh ca marche ! Y'a la LED qui s'allume. Comme c'est joliiiiiiii...._

![](/images/posts/bluetooth-juggling-ball/bjb_14_ready.jpg)

Introduire la carte dans la balle.

![](/images/posts/bluetooth-juggling-ball/bjb_15_ready2.jpg)

_Avec la LED la photo est plus joliiiiiiiiE !_

![](/images/posts/bluetooth-juggling-ball/bjb_16_details.jpg)

Pousser la carte bien au fond et bloquer les coins dans la balle.

_LÃ  ca fait plus terminator que PacMan._

![](/images/posts/bluetooth-juggling-ball/bjb_17_normal.jpg)

La balle est finie. Un peu plus lourde qu'avant et surtout plus fragile !

_A l'heure ou j'écris ces lignes je ne l'ai pas encore cassé... Il reste un espoir._

![](/images/posts/bluetooth-juggling-ball/bjb_18_paperclip.jpg)

Un trombone peut être pratique pour ressortir la carte de la balle !

![](/images/posts/bluetooth-juggling-ball/courbes.png)

Je suis en train d'écrire le programme qui fait quelques chose de ces valeurs.

Pour l'instant, j'arrive à  les lire et tracer ces courbes (données RAW du capteur).
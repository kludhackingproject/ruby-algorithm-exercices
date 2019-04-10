# ruby-algorithm-exercices

## 1 - Multiples de 3 et 5
Cédric Villani a besoin d'aide pour enfin décrocher le prix Nobel de Mathématiques. Il a besoin de résoudre le problème suivant :

    Si on liste tous les entiers naturels strictement inférieurs à 11 et qui sont multiples de 3 ou 5, on obtient 3, 5, 6, 9 et 10. La somme de ces nombres est égale à 33.
    => Trouve la somme des entiers naturels strictement inférieurs à 1000 et qui sont multiples de 3 ou 5.

Pour t'aider sur ce premier exercice, on va décomposer des étapes qui vont nous permettre de le résoudre : découper le problème en petits problèmes (en méthodes), écrire les tests en premier (pour faire du Test Driven Development) puis finalement coder le programme.

## 2 - Cryptofolies
Après ce petit tour de chauffe, voici un autre exercice sous forme d'initiation à la cybersécurité, avec un algorithme de chiffrement hyper secure (lol) : le chiffrement par décalage. En effet, la NSA a besoin de chiffrer ses e-mails et veut faire appel à toi pour implémenter cette méthode indéchiffrable par un enfant de 5 ans.

    En cryptographie, le chiffrement par décalage, aussi connu comme le chiffre de César ou le code de César, est une méthode de chiffrement très simple utilisée par Jules César dans ses correspondances secrètes.
    Le texte chiffré s'obtient en remplaçant chaque lettre du texte clair original par une lettre à distance fixe, toujours du même côté, dans l'ordre de l'alphabet. Si jamais on dépasse la dernière lettre de l'alphabet, on continue à compter depuis le début. Par exemple avec un décalage de 3 vers la droite, A est remplacé par D, B devient E, W devient Z, X devient A, Y devient B, etc.
    Il s'agit d'une permutation circulaire de l'alphabet. La longueur du décalage, 3 dans l'exemple évoqué, constitue la clé du chiffrement qu'il suffit de transmettre au destinataire — s'il sait déjà qu'il s'agit d'un chiffrement de César — pour que celui-ci puisse déchiffrer le message. Dans le cas de l'alphabet latin, le chiffre de César n'a que 26 clés possibles (plus la clé nulle, qui ne modifie pas le texte).

Ta mission : créer une méthode caesar_cipher, dans un programme caesar_cipher.rb qui prend en paramètres un string et une clé de chiffrement (nombre de lettres à décaler) pour en sortir le string modifié.

> caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"

Évidemment, ce programme (à faire pâlir les hackeurs russes) devra être réalisé en TDD. Grâce à cette organisation, tu seras amené à imaginer les différents cas de ton programme (respect de la casse, les lettres qui bouclent, input qui ne sont pas des strings... etc).

Allez, on va pas t'abandonner tout seul...voici les astuces pour faire un code au poil :

    Découper ce gros problème en petits problèmes simples : commence déjà à coder UNE lettre (écrit une méthode qui fait ça). Ensuite tu travailleras sur des mots ou des phrases.
    Tu vas devoir utiliser l'ASCII.
    N'oublie pas de reboucler de z à a.
    La casse doit être identique (=les majuscules restent des majuscules).
    
## 3 - Jean-Michel Trader
Si tu es arrivé à bout des deux premiers exercices, bien joué ! On continue sur notre lancée.

Après la cybersécurité à la NSA, Lehman Brothers veut te débaucher pour faire de la finance. Hyper cool. Ils te demandent cette fois de coder un programme qui permet, à partir d'un array de prix, de connaître le meilleur jour d'achat et le meilleur jour de revente pour faire le maximum de bénéfices.

Si l'on considère l'array de prix suivant : [17, 3, 6, 9, 15, 8, 6, 1, 10], la fonction day_trader doit renvoyer qu'il s'agit du deuxième jour à l'achat et du cinquième jour à la revente.

> day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
=> [1,4]  # $15 - $3 == $12

Comme précédemment, écris ce programme en TDD.

NB : N'oublie pas (et c'est là, la petite difficulté de cet exercice) qu’on ne peut pas vendre avant d'avoir acheté…

## 4 - Compter les mots

### 4.1 - La première version

Après Lehman Brothers, Google a besoin de toi pour faire de la Data Science. Quelle star ! Écris une fonction intitulée word_counter qui prend en paramètres 2 éléments :

    le corpus, string dans lequel tu devras checker le nombre d'occurrences de différents strings
    le dictionnaire, une array de mots (strings) qui seront recherchés dans le corpus

La fonction devra renvoyer le nombre d'occurrences de chaque mot du dictionnaire dans le corpus sous la forme d'un hash. Ainsi :

<code>
> dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]  
> word_counter("below", dictionary)  
=> {"below"=>1, "low"=>1}  
> word_counter("Howdy partner, sit down! How's it going?", dictionary)  
=> {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
</code>

### 4.2 - Compter chez Shakespeare
a) Les mots communs

Google veut savoir combien de fois l'on peut trouver dans [Named Link](https://ocw.mit.edu/ans7870/6/6.006/s08/lecturenotes/files/t8.shakespeare.txt "l'œuvre intégrale de Shakespeare") les mots suivants :

    dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

Crée un fichier shakespeare.txt qui reprend le corpus intégral de l'oeuvre de l'écrivain anglais. Ton programme appellera le fichier shakespeare.txt (indice : c'est plus facile s'ils sont dans le même dossier) pour s'en servir comme corpus, pour ensuite compter les occurrences du dictionnaire.

b) Les gros mots lol

Après les mots communs, Google est de plus en plus curieux. Ils voudraient savoir combien de [Named Link](http://www.bannedwordlist.com/lists/swearWords.txt "gros mots") sont contenus dans l'œuvre de Shakespeare, pour voir si l'auteur anglais était un coquin. Voici une liste de gros mots au format .txt. Télécharge ce fichier, mets-le à côté de Shakespeare.txt. Trouve un moyen pour transformer cette liste de mots au format .txt en une array de string qui te servira de dictionnaire.

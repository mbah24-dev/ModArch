<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<header>
    <h1>Bienvenue dans ModArch! 🎉</h1>
    <p>Le générateur d'architecture modulaire qui fait briller ton projet ! ✨</p>
</header>

<section>
    <h2>Qu'est-ce que ModArch ? 🤔</h2>
    <p>
        ModArch est un générateur d'architecture de projet modulable qui t'aide à créer rapidement une structure
        de projet bien organisée. Avec ModArch, tu n'as plus à t'inquiéter de l'organisation de tes fichiers et répertoires.
        Tu choisis simplement ton nom de projet et ton langage de programmation (ou laisse le par défaut : C) et hop,
        l'architecture est générée pour toi !
    </p>
    <img src="img/arch_view.png" alt="Architecture Modulaire" class="screenshot">
</section>

<section>
    <h2>Comment créer une architecture ? 🚀</h2>
    <p>
        Pour générer une architecture de projet, utilise la commande suivante dans ton terminal :
    </p>
    <pre>
make PROJECT_NAME="my_project" TYPE_LANGUAGE=.cpp
    </pre>
    <p>
        💡 <strong>Note :</strong> Si tu ne spécifies pas de langage de programmation, ModArch utilise le langage <strong>C</strong> par défaut.
    </p>
    <img src="img/create_arch.png" alt="Création d'Architecture" class="screenshot">
</section>

<section>
    <h2>Comment supprimer l'architecture ? 💥</h2>
    <p>
        Si tu veux supprimer l'architecture générée, utilise la commande suivante :
    </p>
    <pre>
make clean PROJECT_NAME="my_project"
    </pre>
    <img src="img/remove_arch.png" alt="Suppression de l'Architecture" class="screenshot">
</section>

<section>
    <h2>Besoin d'aide ? 🤖</h2>
    <p>
        Tu veux en savoir plus sur les commandes disponibles ? Pas de souci, utilise la commande suivante pour
        obtenir de l'aide !
    </p>
    <pre>
make help
    </pre>
    <img src="img/help_arch.png" alt="Aide ModArch" class="screenshot">
</section>

<footer>
    <p>Créé avec ❤️ par Mamadou Bah (42 Stud) - Sous licence ModArch</p>
</footer>

</body>
</html>

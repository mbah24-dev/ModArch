<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ModArch - Générateur d'Architecture Modulaire</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        h1 {
            margin: 0;
        }
        section {
            padding: 20px;
            margin: 10px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        section h2 {
            color: #4CAF50;
        }
        .screenshot {
            width: 100%;
            max-width: 800px;
            border-radius: 8px;
        }
        pre {
            background-color: #2e2e2e;
            color: white;
            padding: 15px;
            border-radius: 8px;
            overflow-x: auto;
        }
        .emoji {
            font-size: 2rem;
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #4CAF50;
            color: white;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
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

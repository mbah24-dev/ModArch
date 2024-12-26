<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ModArch - Générateur d'Architecture</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #1e1e2f; /* Couleur de fond sombre */
            color: #f1f1f1; /* Texte clair */
            margin: 0;
            padding: 20px;
        }
        header {
            text-align: center;
            margin-bottom: 20px;
        }
        h1 {
            color: #ffcc00; /* Titre en jaune */
        }
        h2 {
            color: #5ccfe6; /* Sous-titre bleu clair */
        }
        code {
            background: #282a36; /* Fond sombre pour le code */
            color: #f8f8f2; /* Texte clair pour le code */
            padding: 5px 10px;
            border-radius: 4px;
            font-family: "Courier New", Courier, monospace;
        }
        pre {
            background: #282a36; /* Fond sombre pour les blocs de code */
            color: #f8f8f2; /* Texte clair */
            padding: 15px;
            border-radius: 5px;
            overflow: auto;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        ul li {
            margin: 10px 0;
        }
        footer {
            text-align: center;
            margin-top: 20px;
            color: #888;
        }
    </style>
</head>
<body>
    <header>
        <h1>🚀 ModArch - Générateur d'Architecture de Projet</h1>
        <p>Un générateur d'architecture flexible et efficace pour vos projets en C ou C++ !</p>
    </header>
    <main>
        <section>
            <h2>✨ Fonctionnalités</h2>
            <ul>
                <li>📂 Génère une architecture modulaire et claire pour vos projets.</li>
                <li>🌟 Crée automatiquement un programme de base affichant "Hello World".</li>
                <li>🛠️ Inclut un <code>Makefile</code> personnalisable et un exécutable <code>updateMakefile</code>.</li>
                <li>🔗 Initialise automatiquement un dépôt Git.</li>
            </ul>
        </section>
        <section>
            <h2>🛠️ Utilisation</h2>
            <p>Générez une nouvelle architecture en exécutant :</p>
            <code>make PROJECT_NAME=<i>nom_projet</i> TYPE_LANGUAGE=<i>.cpp</i></code>
            <ul>
                <li><b>PROJECT_NAME :</b> Nom de votre projet (par défaut : <code>MyProject</code>).</li>
                <li><b>TYPE_LANGUAGE :</b> Extension du langage de programmation (<code>.c</code> ou <code>.cpp</code>, par défaut : <code>.c</code>).</li>
            </ul>
        </section>
        <section>
            <h2>📖 Structure Générée</h2>
            <pre>
.ModArch/
   .ModArch.config
lib/
src/
    app/
       core/
       utility/
    main.c
inc/
   nom_projet.h
public/
test/
Makefile
Readme.md
.gitignore
            </pre>
        </section>
        <section>
            <h2>🚨 Points Importants</h2>
            <ul>
                <li>Les fichiers <code>src/main.c</code> et <code>src/app/core/core.hello_word.c</code> sont nécessaires pour le programme par défaut mais peuvent être supprimés si besoin.</li>
                <li>L'exécutable <code>updateMakefile</code> met à jour uniquement le <code>Makefile</code> sans toucher aux autres fichiers.</li>
            </ul>
        </section>
        <section>
            <h2>🔧 Mise à Jour du Makefile</h2>
            <p>Pour mettre à jour le <code>Makefile</code> après l'ajout de nouveaux fichiers :</p>
            <code>./updateMakefile <i>nom_projet</i></code>
            <p>Si le nom du projet n'est pas fourni, un message de rappel sera affiché.</p>
        </section>
        <footer>
            <p>💡 Bon codage et amusez-vous bien !</p>
        </footer>
    </main>
</body>
</html>

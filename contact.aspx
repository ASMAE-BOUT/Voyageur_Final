<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="VoyageurMarocain_ASP.contact" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Contact - Voyageur Marocain</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="logo-area"><h1>Ma Galerie</h1></div>
        <nav><ul class="nav-container">
            <li><a href="index.html" class="onglet-red">Accueil</a></li>
            <li><a href="about.html" class="onglet-green">À Propos</a></li>
            <li><a href="blog.html" class="onglet-orange">Blog</a></li>
            <li class="has-sm"><a href="gallery.html" class="onglet-blue">Galerie</a>
                <ul class="submenu">
                    <li><a href="villes/marrakech.html">Marrakesh</a></li>
                    <li><a href="villes/chefchaouen.html">Chefchaouen</a></li>
                </ul>
            </li>
            <li><a href="contact.aspx" class="onglet-purple">Contact</a></li>
        </ul></nav>
    </header>
    <main class="notebook">
        <h2>Laissez un message</h2><br>
        <form id="form1" runat="server" style="max-width: 600px; display: flex; flex-direction: column; gap: 15px;">
            <input type="text" id="txtNom" runat="server" placeholder="Nom Complet" required style="padding: 12px; border: 1px solid #ddd;">
            <input type="email" id="txtEmail" runat="server" placeholder="Email" required style="padding: 12px; border: 1px solid #ddd;">
            <input type="tel" id="txtTel" runat="server" placeholder="Téléphone (ex: 0612345678)" required style="padding: 12px; border: 1px solid #ddd;">
            <textarea id="txtMsg" runat="server" placeholder="Votre message sur nos villes..." rows="6" required style="padding: 12px; border: 1px solid #ddd; font-family: inherit;"></textarea>
            
            <asp:Button ID="btnEnvoyer" runat="server" Text="Envoyer" OnClick="btnEnvoyer_Click" CssClass="btn-read" style="width: 150px;" />
        </form>
    </main>
    <footer>
        <p>&copy; 2025 Voyageur Marocain — Un voyage au cœur de l'Atlas</p>
    </footer>
</body>
</html>
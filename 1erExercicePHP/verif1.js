function verif() {
    let nom = document.getElementById('nom').value;
    let prenom = document.getElementById('prenom').value;
    let tel = document.getElementById('tel').value;
    let adresse = document.getElementById('adresse').value;
    let md1 = document.getElementById('mdp').value;
    let md2 = document.getElementById('cmdp').value;
    if ((nom.length < 3) || (nom == "")) {
        alert("Nom doit contenir des lettres alphabétiques et minimum 3")
        return false
    }
    if ((prenom.length < 3) || (prenom == "")) {
        alert("prénom doit contenir des lettres alphabétiques et au minimu 3")
        return false
    }
    if (tel.length != 8 || tel == "" ||isNaN(tel)) {
        alert("le numero doit étre 8 chiffres et le premier est supérieur à 1 ")
        return false
    }
    if ((adresse.length < 10) || (adresse == "")) {
        alert("l'adress doit contenir 10 chiffres minimum")
        return false
    }
    if ((md1.length < 6) || (md1.indexOf(" ") != -1)) {
        alert("mot de passe ne doit pas contenir d'espace et 6 chiffres minimum")
        return false
    }
    if (md1 != md2) {
        alert("il faut saisir le mot de passe bien")
        return false
    }
    return true
}
const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');
const signUpForm = document.querySelector('.sign-up form');
const signInForm = document.querySelector('.sign-in form');
function showpassword() {
    var x = document.getElementById("password");
    var c = document.getElementById("passwordc");
    if (x.type === "password") {
        x.type = "text";
        c.type = "text";
    } else {
        x.type = "password";
        c.type = "password";
    }
}
function lettre(ch) {
    i = -1;
    ch = ch.toUpperCase();
    do {
        i++;
        test = ("A" <= ch.charAt(i) && ch.charAt(i) <= "Z") || ch.charAt(i)==' ';
    }
    while (!(i == ch.length - 1 || test == false));
    return test;
}
function validateEmail(email) {
    // Vérifier si l'adresse e-mail est vide
    if (!email) {
        return false;
    }

    // Vérifier le format de base de l'adresse e-mail à l'aide d'une expression régulière
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!regex.test(email)) {
        return false;
    }

    // Vérifier si l'adresse e-mail contient des caractères spéciaux
    const specialChars = /[!#$%^&*()_+\-=\[\]{};':"\\|,<>\/?]+/;
    if (specialChars.test(email)) {
        return false;
    }

    // Vérifier si l'adresse e-mail commence ou se termine par un point
    if (email.startsWith('.') || email.endsWith('.')) {
        return false;
    }

    // Vérifier si l'adresse e-mail contient plusieurs points consécutifs
    if (email.includes('..')) {
        return false;
    }

    // Vérifier si l'adresse e-mail contient des espaces
    if (email.includes(' ')) {
        return false;
    }

    // Vérification réussie, l'adresse e-mail est valide
    return true;
}
// function verif() {

//     nom = document.f.f_name.value;
//     pr = document.f.l_name.value;
//     tel = document.f.phone_number.value;
//     email = document.f.email.value;
//     mdp = document.f.password.value;
//     mdps = document.f.passwordc.value;
//     if ((nom.length < 3) || (lettre(nom) == false)) {
//         document.getElementById("test").innerHTML = "<font color='#FF0000'><b>Vérifier votre Nom !</font>";
//         document.f.nom.focus;
//         return false;
//     }
//     if ((pr.length < 3) || (lettre(pr) == false)) {
//         document.getElementById("test").innerHTML = "<font color='#FF0000'><b>Vérifier votre Prénom !</font>";
//         document.f.prenom.focus;
//         return false;
//     }
//     if (validateEmail(email)==false){
//         document.getElementById("test").innerHTML = "<font color='#FF0000'><b>Vérifier Votre email !</font>";
//         document.f.email.focus;
//         return false;
//     }
//     if ((tel.length != 8) || (isNaN(tel))) {
//         document.getElementById("test").innerHTML = "<font color='#FF0000'><b>Vérifier Votre N° Téléphone !</font>";
//         document.f.tel.focus;
//         return false;
//     }
    
//     if ((mdp.length < 8)) {
//         document.getElementById("test").innerHTML = "<font color='#FF0000'><b>il faut que mot de passe doit etre fort !</font>";
//         document.f.mdp.focus;
//         return false;
//     }
//     if ((mdps.length < 8) || mdp!=mdps) {
//         document.getElementById("test").innerHTML = "<font color='#FF0000'><b>Vérifier Votre deuxieme mot de passe!</font>";
//         document.f.mdps.focus;
//         return false;
//     }
//     return true;
// }   


function verifs() {
    const container = document.getElementById('container');
    const registerBtn = document.getElementById('register');
    const loginBtn = document.getElementById('login');
    const signUpForm = document.querySelector('.sign-up form');
    const signInForm = document.querySelector('.sign-in form');
    email = document.fs.email.value;
    mdp = document.fs.password.value;

    if (validateEmail(email)==false){
        document.getElementById("testt").innerHTML = "<font color='#FF0000'><b>Vérifier Votre email !</font>";
        document.fs.email.focus;
        return false;
    }
    if ((mdp.length < 8)) {
        document.getElementById("testt").innerHTML = "<font color='#FF0000'><b>il faut que mot de passe doit etre fort !</font>";
        document.fs.mdp.focus;
        return false;
    }
    return true;
}
registerBtn.addEventListener('click', () => {
    container.classList.add("active");
});

loginBtn.addEventListener('click', () => {
    container.classList.remove("active");
});
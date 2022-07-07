function show_menu() {
	document.getElementById("close").style.display = "block";
	document.getElementById("show").style.display = "none";
	document.getElementById("hamburger-menu-id").style.display = "block";
	document.getElementById("hamburger-menu-side-id").style.display = "block";
	document.getElementById("header-id").style.height = "auto";
	document.getElementById("header-contents-id").style.display = "none";
	document.getElementById("footer-id").style.display = "none";
	document.getElementById("cart-img").src = "images/cart-icon.png";
}

function close_menu() {
	document.getElementById("show").style.display = "block";
	document.getElementById("close").style.display = "none";
	document.getElementById("hamburger-menu-id").style.display = "none";
	document.getElementById("hamburger-menu-side-id").style.display = "none";
	document.getElementById("header-id").style.height = "768px";
	document.getElementById("header-contents-id").style.display = "block";
	document.getElementById("footer-id").style.display = "block";
	document.getElementById("cart-img").src = "images/cart-icon-white.png";
}

function signin_or_profile() {
	var shown = document.getElementById('show_fname');
	if (shown.innerText == "Signin/Signup") {
		window.location.href = 'Signin.php';
	}
	else {
		window.location.href = 'profile.php';
	}
}
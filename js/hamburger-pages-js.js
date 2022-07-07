function show_menu() {
	document.getElementById("close").style.display = "block";
	document.getElementById("show").style.display = "none";
	document.getElementById("hamburger-menu-id").style.display = "block";
	document.getElementById("hamburger-menu-side-id").style.display = "block";
	document.getElementById("header-id").style.height = "auto";
	document.getElementById("footer-id").style.display = "none";
	document.getElementById("cart-img").src = "../images/cart-icon.png";
	document.getElementById("contents-id").style.display = "none";
	document.getElementById("products-id").style.display = "none";
}

function close_menu() {
	document.getElementById("show").style.display = "block";
	document.getElementById("close").style.display = "none";
	document.getElementById("hamburger-menu-id").style.display = "none";
	document.getElementById("hamburger-menu-side-id").style.display = "none";
	document.getElementById("header-id").style.height = "150px";
	document.getElementById("footer-id").style.display = "block";
	document.getElementById("cart-img").src = "../images/cart-icon-white.png";
	document.getElementById("contents-id").style.display = "block";
	document.getElementById("products-id").style.display = "block";
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
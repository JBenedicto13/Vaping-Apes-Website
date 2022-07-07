window.addEventListener("scroll", function(){
	var header = document.querySelector("nav_sticky");
	header.classList.toggle("sticky", window.scrollY > 0);
})
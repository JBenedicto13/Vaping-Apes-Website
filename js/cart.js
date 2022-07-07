function plus_qty() {
    var prevqty = document.getElementById('txtqty').value;
    var currentqty = parseFloat(prevqty) + 1;

    if (currentqty > 99) {
        currentqty = 99;
    }

    document.getElementById('txtqty').value = currentqty;
}

function minus_qty() {
    var prevqty = document.getElementById('txtqty').value;
    var currentqty = parseFloat(prevqty) - 1;

    if (currentqty < 1) {
        currentqty = 1;
    }

    document.getElementById('txtqty').value = currentqty;
    document.getElementsById("newdiv").style.display = "none";
}

function cart_empty() {
    var empty_cart = document.getElementById('empty');
    var notempty_cart = document.getElementById('notempty');
    empty_cart.style.display = "block";
    notempty_cart.style.display = "none";
}

function cart_notempty() {
    var empty_cart = document.getElementById('empty');
    var notempty_cart = document.getElementById('notempty');
    empty_cart.style.display = "none";
    notempty_cart.style.display = "block";
}
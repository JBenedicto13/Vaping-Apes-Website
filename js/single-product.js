window.addEventListener('load', () => {
    const sprod_id = sessionStorage.getItem("PROD_ID");
    document.getElementById('x').innerHTML = sprod_id;
})
function openLogin() {
    document.getElementById("loginPopup").style.display = "block";
}

function openRegister() {
    document.getElementById("registerPopup").style.display = "block";
}

function closePopup() {
    document.getElementById("loginPopup").style.display = "none";
    document.getElementById("registerPopup").style.display = "none";
}

// Close popup if user clicks anywhere outside the white box
window.onclick = function(event) {
    if (event.target.className === "popup-overlay") {
        closePopup();
    }
}

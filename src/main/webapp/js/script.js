// Open login popup
function openLogin() {
    document.getElementById("loginPopup").style.display = "flex";
}

// Open register popup
function openRegister() {
    document.getElementById("registerPopup").style.display = "flex";
}

// Close any popup
function closePopup() {
    document.getElementById("loginPopup").style.display = "none";
    document.getElementById("registerPopup").style.display = "none";
}

// Quantity increment/decrement logic
document.addEventListener("DOMContentLoaded", () => {
    // Get all product cards
    const cards = document.querySelectorAll(".card");

    cards.forEach(card => {
        const minusBtn = card.querySelector(".actions button:first-child");
        const plusBtn = card.querySelector(".actions button:last-child");
        const quantitySpan = card.querySelector(".actions span");

        // Increment
        plusBtn.addEventListener("click", () => {
            let count = parseInt(quantitySpan.textContent);
            quantitySpan.textContent = count + 1;
        });

        // Decrement
        minusBtn.addEventListener("click", () => {
            let count = parseInt(quantitySpan.textContent);
            if (count > 0) {
                quantitySpan.textContent = count - 1;
            }
        });
    });
});

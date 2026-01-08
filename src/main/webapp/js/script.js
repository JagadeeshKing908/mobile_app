// Popups
function openLogin() {
    document.getElementById("loginPopup").style.display = "flex";
}

function openRegister() {
    document.getElementById("registerPopup").style.display = "flex";
}

function closePopup() {
    document.getElementById("loginPopup").style.display = "none";
    document.getElementById("registerPopup").style.display = "none";
}

// Quantity increment/decrement
document.addEventListener("DOMContentLoaded", () => {
    const cards = document.querySelectorAll(".card");

    cards.forEach(card => {
        const minusBtn = card.querySelector(".actions button:first-child");
        const plusBtn = card.querySelector(".actions button:last-child");
        const quantitySpan = card.querySelector(".actions span");

        plusBtn.addEventListener("click", () => {
            let count = parseInt(quantitySpan.textContent);
            quantitySpan.textContent = count + 1;
        });

        minusBtn.addEventListener("click", () => {
            let count = parseInt(quantitySpan.textContent);
            if (count > 0) quantitySpan.textContent = count - 1;
        });

        // Image hover swap (front/back)
        const img = card.querySelector("img");
        const images = JSON.parse(img.dataset.images);
        let index = 0;

        img.addEventListener("mouseenter", () => {
            if (images[1]) img.src = images[1];
        });

        img.addEventListener("mouseleave", () => {
            img.src = images[0];
        });
    });
});

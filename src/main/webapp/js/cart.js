function increase(btn) {
    let span = btn.previousElementSibling;
    span.innerText = parseInt(span.innerText) + 1;
}

function decrease(btn) {
    let span = btn.nextElementSibling;
    let val = parseInt(span.innerText);
    if (val > 0) span.innerText = val - 1;
}

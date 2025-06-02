document.getElementById("togglePassword").addEventListener("click", function () {
    const password = document.getElementById("password");
    password.type = password.type === "password" ? "text" : "password";
});

document.getElementById("toggleConfirmPassword").addEventListener("click", function () {
    const confirmPassword = document.getElementById("confirmPassword");
    confirmPassword.type = confirmPassword.type === "password" ? "text" : "password";
});

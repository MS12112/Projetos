document.getElementById('loginForm').addEventListener('submit', function(e) {
    e.preventDefault();

    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    const errorMessage = document.getElementById('error-message');
 
    /*Users e passwords | Direcionamento de cada user para uma página*/
    const users = [
        { username: 'Matheus', password: 'santos123', redirect: 'notas_matheus.html' },
        { username: 'Jose', password: 'robertinho123', redirect: 'junior.html' },
        { username: 'Day', password: 'rodrigues123', redirect: '#' },
        { username: 'Karyna', password: '', redirect: '#' }
    ];

    const user = users.find(user => user.username === username && user.password === password);

    if (user) {
        window.location.href = user.redirect;
    } else {
        errorMessage.textContent = 'Nome de usuário ou senha inválidos';
        errorMessage.style.display = 'block'; // Exibir mensagem de erro
    }
});
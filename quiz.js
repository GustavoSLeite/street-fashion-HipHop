let currentQuestion = 1;

function nextQuestion(questionNumber) {
    // Esconde a pergunta atual
    const current = document.getElementById(`question${questionNumber}`);
    current.classList.remove('active');

    // Mostra a próxima pergunta
    const next = document.getElementById(`question${questionNumber + 1}`);
    next.classList.add('active');
}

function submitQuiz() {
    const answers = ["B", "A", "C", "B", "A", "D", "A", "B", "B", "D"]; // Array de respostas corretas

    let score = 0;
    const form = document.getElementById("quizForm");
    const userAnswers = new FormData(form);

    answers.forEach((correctAnswer, index) => {
        const questionNumber = `q${index + 1}`;
        if (userAnswers.get(questionNumber) === correctAnswer) {
            score++;
        }
    });

    const result = document.getElementById("result");
    result.innerHTML = `<p>Você acertou ${score} de ${answers.length} perguntas!</p>`;
    form.style.display = "none"; // Esconde o formulário
}

// Mostra a primeira pergunta ao carregar a página
document.getElementById('question1').classList.add('active');

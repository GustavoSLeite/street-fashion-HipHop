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
    const answers = {
        q1: "B",
        q2: "A",
        q3: "C",
        q4: "B",
        q5: "A",
        q6: "D",
        q7: "A",
        q8: "B",
        q9: "B",
        q10: "D"
    };

    let score = 0;
    const form = document.getElementById("quizForm");
    const userAnswers = new FormData(form);

    for (let [question, correctAnswer] of Object.entries(answers)) {
        if (userAnswers.get(question) === correctAnswer) {
            score++;
        }
    }

    const result = document.getElementById("result");
    result.innerHTML = `<p>Você acertou ${score} de ${Object.keys(answers).length} perguntas!</p>`;
    form.style.display = "none"; // Esconde o formulário
}

// Mostra a primeira pergunta ao carregar a página
document.getElementById('question1').classList.add('active');

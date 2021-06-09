import { useState, useEffect } from "react";

import "./App.css";

function FormCurso({ status, onNewCurso }) {
  const [name, setName] = useState("");

  return (
    <form
      onSubmit={event => {
        event.preventDefault();
        onNewCurso({ name });
        setName("");
      }}>
      <h4>Novo Curso</h4>
      <div className="form-group">
        <label htmlFor="name">Nome do Curso:</label>
        <input
          value={name}
          onChange={event => setName(event.target.value)}
          disabled={status !== "done"}
          className="form-control"
          type="text"
          name="name"
          id="name"
        />
      </div>
      <button type="submit" className="btn btn-primary" disabled={status !== "done"}>
        Cadastrar
      </button>
    </form>
  );
}

export default function App() {
  const [cursos, setCursos] = useState([]);
  const [status, setStatus] = useState("none");

  async function carregaCursos() {
    setStatus("loading");

    try {
      const cursosReq = await fetch(
        `http://localhost/labs/satc/slides-sw-aula-09/demo/projeto-laravel/public/api/cursos`
      );
      const cursos = await cursosReq.json();
      setCursos(cursos);
      setStatus("done");
    } catch (err) {
      setStatus("error");
    }
  }

  async function criaCurso(dados) {
    setStatus("loading");

    try {
      const cursosReq = await fetch(
        `http://localhost/labs/satc/slides-sw-aula-09/demo/projeto-laravel/public/api/cursos`,
        {
          headers: {
            Accept: "application/json",
            "Content-Type": "application/json",
          },
          method: "POST",
          body: JSON.stringify(dados),
        }
      );
      const curso = await cursosReq.json();
      setCursos([...cursos, curso]);
      setStatus("done");
    } catch (err) {
      setStatus("error");
    }
  }

  async function deletaCurso(id) {
    setStatus("loading");

    try {
      const cursosReq = await fetch(
        `http://localhost/labs/satc/slides-sw-aula-09/demo/projeto-laravel/public/api/cursos/${id}`,
        {
          headers: {
            Accept: "application/json",
          },
          method: "DELETE",
        }
      );
      const curso = await cursosReq.json();
      await carregaCursos();
    } catch (err) {
      setStatus("error");
    }
  }

  useEffect(() => {
    carregaCursos();
  }, []);

  return (
    <div className="container">
      {status === "done" && cursos.length > 0 && (
        <div className="lista-cursos">
          <h3>Cursos Disponíveis:</h3>
          <ul>
            {cursos.map(curso => (
              <li key={curso.id}>
                {curso.name} |{" "}
                <a
                  href="#remove"
                  onClick={event => {
                    event.preventDefault();
                    if (window.confirm("Você confirma a exclusão deste curso?")) {
                      deletaCurso(curso.id);
                    }
                  }}>
                  Remover
                </a>
              </li>
            ))}
          </ul>
        </div>
      )}
      {status === "loading" && <p>Carregando...</p>}
      {status === "error" && (
        <p style={{ color: "red" }}>Não foi possível carregar a lista de cursos, tente novamente mais tarde.</p>
      )}
      <br />
      <FormCurso status={status} onNewCurso={criaCurso} />
    </div>
  );
}

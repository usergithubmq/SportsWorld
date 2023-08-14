import React, { useState } from "react";
import Alerta from '../components/Alerta';
import axios from 'axios';

const Login = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [alerta, setAlerta] = useState({});

    const handleSubmit = async (e) => {
        e.preventDefault();

        console.log("Email:", email);
        console.log("Password:", password);

        if ([email, password].includes('')) {
            setAlerta({
                msg: 'Todos los campos son obligatorios',
                error: true
            });
            setTimeout(() => {
                setAlerta({});
            }, 2000);
            return;
        }

        setAlerta({});

        try {
            const response = await axios.post('http://localhost:8080/login', {
                email: email,
                password: password
            });

            // Manejar la respuesta aquí
            console.log("Respuesta del servidor:", response.data);
        } catch (error) {
            console.error("Error al iniciar sesión:", error.response);
            setAlerta({
                msg: 'Error al iniciar sesión. Verifica tus credenciales.',
                error: true
            });
        }
    };

    return (
        <>
            <div>
                <img
                    className="mx-auto"
                    src="/public/icon-sports-world.png"
                    alt="sportsworld.com.mx"
                    width={230}
                />
            </div>
            <div>
                {alerta.msg && <Alerta alerta={alerta} />}
                <form
                    className="my-8 bg-white shadow rounded-lg p-10 shadow px-10 py-1 rounded-xl"
                    onSubmit={handleSubmit}
                    style={{ backgroundColor: "rgba(255, 255, 255, 0.4)" }}
                >
                    <div className="my-5">
                        <label
                            className="uppercase text-black block font-bold text-sm"
                            htmlFor="email"
                        >
                            Email
                        </label>
                        <input
                            id="email"
                            type="email"
                            placeholder="user@sportsworld.com.mx"
                            style={{ backgroundColor: "rgba(255, 255, 255, 0.75)" }}
                            className="w-full mt-3 p-3 border rounded-xl text-sm"
                            value={email}
                            onChange={e => setEmail(e.target.value)}
                        />
                    </div>
                    <div className="my-5">
                        <label
                            className="uppercase text-black block font-bold text-sm"
                            htmlFor="password"
                        >
                            Contraseña
                        </label>
                        <input
                            id="password"
                            type="password"
                            placeholder="Ingresa tu contraseña"
                            style={{ backgroundColor: "rgba(255, 255, 255, 0.75)" }}
                            className="w-full mt-3 p-3 border rounded-xl text-sm"
                            value={password}
                            onChange={e => setPassword(e.target.value)}
                        />
                    </div>
                    <div className="flex justify-center">
                        <input
                            type="submit"
                            value="Iniciar Sesión"
                            className=" bg-gradient-to-br bg-gray-700 mb-5 w-60 p-3 text-white uppercase font-bold rounded-xl hover:cursor-pointer hover:bg-red-700 transition-colors"
                        />
                    </div>
                </form>
            </div>
        </>
    );
};

export default Login;

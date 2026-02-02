package com.example.demo.service;

import com.example.demo.model.Usuario;

import java.util.Optional;

public interface UsuarioService {
    Usuario registrar(Usuario usuario);
    Optional<Usuario> login(String username, String password);
}

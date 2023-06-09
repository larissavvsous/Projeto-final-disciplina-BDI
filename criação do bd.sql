use projeto_final;
CREATE TABLE cidade (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  CEP VARCHAR(20) NOT NULL
);

CREATE TABLE filiais (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  endereco VARCHAR(200) NOT NULL,
  numero_funcionarios INT NOT NULL,
  cidade_id INT NOT NULL,
  FOREIGN KEY (cidade_id) REFERENCES cidade(id)
);

CREATE TABLE clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  CPF VARCHAR(11) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  idade INT NOT NULL,
  email VARCHAR(100) NOT NULL,
  historico_credito TEXT
);

CREATE TABLE carros (
  id INT PRIMARY KEY AUTO_INCREMENT,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  ano INT NOT NULL,
  cor VARCHAR(20) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL,
  capacidade_motor FLOAT NOT NULL,
  transmissao VARCHAR(20) NOT NULL,
  filial_id INT NOT NULL,
  FOREIGN KEY (filial_id) REFERENCES filiais(id)
);

CREATE TABLE funcionarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  idade INT NOT NULL,
  endereco VARCHAR(200) NOT NULL,
  cargo VARCHAR(50) NOT NULL,
  data_contratacao DATE NOT NULL,
  id_filial INT NOT NULL,
  FOREIGN KEY (id_filial) REFERENCES filiais(id)
);

CREATE TABLE vendas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  carro_id INT NOT NULL,
  cliente_id INT NOT NULL,
  funcionario_id INT NOT NULL,
  data_venda DATE NOT NULL,
  metodo_pagamento VARCHAR(50) NOT NULL,
  valor_venda DECIMAL(10, 2) NOT NULL,
  filial_id INT NOT NULL,
  FOREIGN KEY (carro_id) REFERENCES carros(id),
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id),
  FOREIGN KEY (filial_id) REFERENCES filiais(id)
);

CREATE TABLE programa_fidelidade (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT NOT NULL,
  data_inscricao DATE NOT NULL,
  nivel VARCHAR(20),
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

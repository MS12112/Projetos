-- Tabela de Pedidos
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    data_pedido DATE,
    valor_total DECIMAL(10, 2)
);

-- Tabela de Itens de Pedidos
CREATE TABLE ItensPedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    descricao VARCHAR(255),
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

-- Inserir Pedidos
INSERT INTO Pedidos (id_pedido, data_pedido, valor_total) VALUES
(1, '2024-04-27', 150.00),
(2, '2024-04-27', 200.00),
(3, '2024-04-27', 100.00),
(4, '2024-04-27', 50.00),
(5, '2024-04-27', 300.00);

-- Inserir Itens de Pedidos
INSERT INTO ItensPedido (id_item, id_pedido, descricao, quantidade, preco_unitario) VALUES
(1, 1, 'Produto A', 2, 50.00),
(2, 1, 'Produto B', 1, 100.00),
(3, 2, 'Produto C', 3, 50.00),
(4, 3, 'Produto D', 1, 100.00),
(5, 5, 'Produto E', 2, 150.00);

SELECT p.id_pedido, p.data_pedido, p.valor_total, i.id_item, i.descricao, i.quantidade, i.preco_unitario
FROM Pedidos p
JOIN ItensPedido i ON p.id_pedido = i.id_pedido;

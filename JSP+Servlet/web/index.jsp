<%-- 
    Document   : index
    Created on : 19 de jun. de 2023, 12:32:49
    Author     : kadu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculadora</title>
        <link rel="stylesheet" href="Style.css"/>
    </head>
    <body>
        <div class="cabecalho">
            <img class="logo" src="calculadora.png" alt="logo"/>
            <h1>Calculadora</h1>

            <nav class="menu">
                <ul>
                    <li>Home</li>
                    <li>Contato</li>
                    <li><a href="https://github.com/DevKadu02">Pórtifolio</a></li>
                </ul>
            </nav>
        </div>



        <form action="calculo" method="post"  >

            <div class="entrada123">
                <h2> Valor 1: <input type="text" name="valor1" /><br/></h2>
                <h2>Valor 2: <input type="text" name="valor2" /><br/></h2>
                <h2>Operação (+, -, *, /): <input type="text" name="operacao" /><br/></h2>
                <input type="submit" value="Calcular" class="submit" />
            </div>
            <div class="saida">
            <% if (request.getAttribute("valor1Erro") != null) {%>
            <h2 class="errovalor1">Erro no valor 1: <%= request.getAttribute("valor1Erro")%></h2>
            <% } %>
            <% if (request.getAttribute("valor2Erro") != null) {%>
            <h2 class="errovalor2">Erro no valor 2: <%= request.getAttribute("valor2Erro")%></h2>
            <% } %>
            <% if (request.getAttribute("divisaoErro") != null) {%>
            <h2 class="errodiv">Erro de divisão: <%= request.getAttribute("divisaoErro")%></h2>
            <% } %>


            <% if (request.getAttribute("resultado") != null) {%>
            <h2 class="result">Resultado: <%= request.getAttribute("resultado")%></h2>
            <% }%>
            </div>
            
            <div class="rodape"> 
            Rodapé
            </div>
        </form>

    </body>
</html>

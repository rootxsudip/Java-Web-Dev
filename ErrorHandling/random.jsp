<%@page import="java.util.Random,java.util.ArrayList,java.util.Date,java.io.*" %>
    <h1>Random Number:
        <% Random r=new Random(); int n=r.nextInt(10); %>
            <%= n %>
                <p>Current Date:
                    <%= new Date().toString() %>
                </p>
    </h1>
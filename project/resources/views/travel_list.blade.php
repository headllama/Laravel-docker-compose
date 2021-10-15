<html>
<head>
    <title>Walber Hugo</title>
</head>

<body>
    <h1>Walber Hugo - Devops</h1>
    <h2>Tecnologias que eu possuo conhecimento: </h2>
    <ul>
      @foreach ($conhecimento as $newplace)
        <li>{{ $newplace->name }}</li>
      @endforeach
    </ul>

    <h2>Tecnologias que eu pretendo me aprofundar:</h2>
    <ul>
          @foreach ($estudo as $place)
                <li>{{ $place->name }}</li>
          @endforeach
    </ul>
    <h2>Blog pessoal:</h2>
    <a href="https://whugo.com.br">whugo.com.br</a>
</body>
</html>

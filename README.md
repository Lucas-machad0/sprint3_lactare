Projeto: Lactare
Equipe: P2A

Integrantes: 
    Cesar Brasil 556236
    Caio Leria 557833
    Lucas Machado 557431
    Pedro Salimon 555038
-----------------------------------------------------------------------------------

Aplicativo mobile informativo desenvolvido em Flutter para conscientizar e orientar os usuários sobre a doação de leite.

O app apresenta informações sobre a importância das doações, notícias de campanhas, respostas para as dúvidas mais comuns e um mapa ilustrativo com pontos de coleta. A versão atual utiliza conteúdos e imagens locais, funcionando sem necessidade de conexão com a internet.

As imagens das telas estão na pasta images_Screens.

------------------

Splash Screen

Exibe uma imagem centralizada com o nome Lactare App e o slogan “Doe leite, compartilhe cuidado”.

Após 6 segundos, redireciona automaticamente para a tela de Intro.

------------------

Intro Screen

Onboarding com 2 páginas informativas navegáveis:

Página 1: “Uma Doação que Alimenta” — apresenta a importância da doação de leite para famílias e instituições que precisam de apoio.

Página 2: “Doe e Faça a Diferença” — incentiva o usuário a conhecer campanhas e pontos de coleta.

Cada página possui imagem, título, descrição e botões de navegação (Voltar, Avançar e Explorar). Um indicador de pontos mostra a página atual.

------------------

Home Screen

Menu principal com três cards de navegação:

Notícias → abre a tela de notícias e campanhas.

Central de Dúvidas → abre as perguntas e respostas sobre doações.

Mapa de Doações → abre o mapa com os pontos de coleta.

------------------

Notícias Screen

Apresenta uma imagem de capa e notícias relacionadas às campanhas de doação de leite:

Campanha de arrecadação para famílias.

Mais de 500 litros de leite arrecadados.

Disponibilização de novos pontos de coleta.

Cada notícia apresenta título, data e uma breve descrição.

------------------

Central de Dúvidas Screen

Reúne as principais dúvidas sobre a doação de leite. Contém informações sobre:

Como realizar uma doação.

Tipos de leite que podem ser doados.

Validade e condições da embalagem.

Locais de entrega.

Destino das doações.

Acompanhamento dos resultados das campanhas.

------------------

Mapa de Doações Screen

Exibe um mapa ilustrativo com os locais disponíveis para doação de leite.

A tela apresenta três pontos de coleta:

Hospital Solidário — Av. Esperança, 120 – Centro.

Instituto Cuidar — Av. do Leite, 350 – Jardim União.

Casa da Amizade — Rua do Cuidado, 85 – Vila Esperança.


-----------------------------------------------------------------------------------

Instruções básicas para executar o projeto

Pré-requisitos

Flutter instalado e configurado.

VS Code ou Android Studio.

Navegador Chrome, emulador Android ou aparelho conectado.

Para verificar a instalação do Flutter, execute:

flutter doctor

Executar o aplicativo

Abra o terminal na pasta principal do projeto, onde está localizado o arquivo pubspec.yaml, e execute:

flutter pub get
flutter run

Para executar diretamente no Chrome:

flutter run -d chrome
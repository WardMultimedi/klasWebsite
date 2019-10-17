<%@ page import="be.multimedi.klasWebsite.Leerling" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <title>Java Dashers</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<nav class="navbar text-center navbar-expand-sm bg-dark navbar-dark ">
    <!-- Navbar links -->
    <ul class="navbar-nav">
        <!-- Brand -->
        <li class="nav-item">
            <a class="navbar-brand" href="#myPage">
                <img src="img/javaicon2.png" alt="LogoJava" style="width:40px;">Home
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="#about">Over ons</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#knowledge">De kennis</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#profiles">Wie zijn we</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#contact">Contacteer ons</a>
        </li>

    </ul>

</nav>

<!-- Header in containers -->
<div class="container">
    <div class="jumbotron jumbotron-cover-image">
        <h2>New <b>Java</b> developers!</h2>
        <p>Extractig Java code from regular Java coffee beans.</p>
    </div>

    <!-- About Us -->
    <div id="about" class="item">
        <div class="card border-0 shadow my-5">
            <div class="row">
                <div class="col-sm-8">
                    <h2>Over ons</h2><br>
                    <p>Wij zijn een groep van 10 beginnende Java developers. Wij volgen de cursus Java Enterprise
                        ontwikkelaar
                        op
                        de VDAB van Heverlee.
                        Deze groep bestaat uit zeer gemotiveerde developers die willen groeien tot nieuwe hoogtes in de
                        sector.<br><br>
                        Wij nodigen u graag uit op onze Job-dag op 4 december!
                    </p>
                    <br>
                </div>
                <div class="col-sm-4">
                    <img src="img/programcode.jpg" class="side-image">
                </div>
            </div>
        </div>
    </div>

    <!-- Knowledge -->
    <div id="knowledge" class="item">
        <div class="card border-0 shadow my-5">
            <div class="row">
                <div class="col-sm-8">
                    <h2>Kennis</h2>
                    <p>
                        <strong>Java technologieën:</strong> JSE 1.11 - Servlets 3.0 - JSP 2.3 - EL 2.1 - Custom Tags -
                        JSTL - EJB
                        -
                        Spring 4.0 - JDBC - JPA 2.1 - JUnit - JAXB .
                        <br/><strong>Webtechnologieën:</strong> HTML - XHTML - CSS - JavaScript - Ajax - JSON -
                        Bootstrap
                        <br/><strong>Platformen:</strong>Windows 10 - Linux - Macintosh
                        <br/><strong>Ontwikkeltools:</strong>IntelliJ - Git - Maven
                    </p>
                </div>
                <div class="col-sm-4">
                    <img src="img/closetag.jpg" class="side-image">
                </div>
            </div>
        </div>
    </div>

    <!-- Profiles -->
    <div id="profiles" class="item">
        <h1 style='color: #fff;'>Wie zijn we</h1>
        <div id="profilecards" class="row">

            <%
                for (Leerling l : (List<Leerling>) request.getAttribute("leerlingen")) {
            %>
            <div class="col-lg-4 col-md-6">
                <div class="card card-body" >
                    <div class="media-body">
                        <img src="img/<%=l.getImage()%>" alt="Tom Derekx" class="mr-3 mt-3 rounded-circle"
                             style="width:80px;float: left;">
                        <h4><%=l.getVoornaam() + " " + l.getAchternaam()%>
                        </h4>
                        <p>
                            <%=l.getDescription()%>
                        </p>
                        <div class="text-center">
                            <span class="bottom-span">
                                <% if(l.getEmail() !=null){%>
                                <strong>email: </strong><a href="mailto:<%=l.getEmail()%>"><%=l.getEmail()%></a><br/>
                                <%}%>
                                <% if (l.getHomepage() != null) { %>
                                <a href="<%=l.getHomepage()%>">homepage</a><br>
                                <% }
                                    if (l.getLinkedIn() != null) { %>
                                <a href="<%=l.getLinkedIn()%>">linkedin</a>
                                <% } %>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>

        </div>
    </div>
    <!-- Contact -->
    <div id="contact" class="item">
        <div class="card border-0 shadow my-5">
            <h1>Job-dag:</h1>
            <p>
                <strong>Datum:</strong> 4 december 2019<br>
                <strong>Adres:</strong> Interleuvenlaan 2, 3001 Leuven<br>
                <strong>Contactpersoon:</strong> Pascale Vandiest <a
                    href="mailto:vandiest.consulting@gmail.com">vandiest.consulting@gmail.com</a>
            </p>
            <div id="gmaps" style="width: 100%">
                <iframe width="100%" height="600"
                        src="https://maps.google.com/maps?width=100%&height=600&hl=nl&coord=50.8510715, 4.7243969&q=Interleuvenlaan%202%2C%203001%2C%20Belgium+(VDAB)&ie=UTF8&t=&z=16&iwloc=B&output=embed"
                        frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
            </div>
        </div>
    </div>
    <footer class="container-fluid text-center">
        <a href="#myPage" title="To Top">
            <h3>To the top</h3>
        </a>
    </footer>
</div>
</body>

</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Zgaze
  Date: 5/12/2018
  Time: 10:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Title</title>
    <link rel="stylesheet"
          type="text/css"
          href="<c:url value="/resources/css/games.css" />">
    <script src="<c:url value="/resources/js/games.js" />"></script>
</head>
<body>
<!-- button za dodavanje utakmice -->
<button type="button" class="btn btn-info" id="addGameButton" data-toggle="modal" data-target="#addInfo">Add new match</button><!-- button za dodavanje utakmice -->
<!-- modal za izmenu informacija o utakmicama-->
<div class="modal fade" id="editInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle0">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!-- end of modal za izmenu informacija o utakmicama -->
<!-- modal za dodavanje nove utakmice -->
<div class="modal fade" id="addInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Insert new match</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="insertGameForm">
                    <div class="form-group" id="team1">
                        <label class="text"for="teamHome">Team 1 (Home)</label>
                        <select class="form-control" id="teamHome">
                            <%--nesto --%>
                        </select>
                    </div>
                    <div class="form-group" id="team2">
                        <label class="text" for="teamAway">Team 2 (Away)</label>
                        <select class="form-control" id="teamAway">
                            <%--<option class="teamAwayOptions"></option>--%>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="text" for="teamHomeGoals">Team 1 goals</label>
                        <input type="text" class="form-control" id="teamHomeGoals" aria-describedby="emailHelp" placeholder="">
                    </div>
                    <div class="form-group">
                        <label class="text"for="teamAwayGoals">Team 2 goals</label>
                        <input type="text" class="form-control" id="teamAwayGoals" aria-describedby="emailHelp" placeholder="">
                    </div>
                    <div class="form-group">
                        <label class="text"for="round">Round</label>
                        <input type="text" class="form-control" id="round" aria-describedby="emailHelp" placeholder="">
                    </div>
                    <span id="warning1">Please choose two different teams</span>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" id="nesto" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!-- end of modal za dodavanje nove utakmice -->
            <table class="table table-hover table-dark">
                <thead>
                <tr>
                    <th scope="col">Team (home)</th>
                    <th scope="col">Team (away)</th>
                    <th scope="col">Team (home) goals</th>
                    <th scope="col">Team (away) goals</th>
                    <th scope="col">Round</th>
                </tr>
                </thead>
                    <tbody class="classic">
                    </tbody>
            </table>
</body>
</html>

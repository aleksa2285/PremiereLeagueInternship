$(function(){
    getGamesInformation();
});
function getGamesInformation(){

    $.get( "http://localhost:8080/games/get", function( data ) {
        $.each(data, function (key, value) {
            var $teamHomeName = $('<td>');
            $teamHomeName.html(value.teamHomeName);
            var $teamAwayName = $('<td>');
            $teamAwayName.html(value.teamAwayName);
            var $teamHomeGoals = $('<td>');
            $teamHomeGoals.html(value.teamHomeGoals);
            var $teamAwayGoals = $('<td>');
            $teamAwayGoals.html(value.teamAwayGoals);
            var $round = $('<th>', {scope:'row'});
            $round.html(value.round);
            var $finalAppendArray = [$teamHomeName, $teamAwayName, $teamHomeGoals, $teamAwayGoals, $round];
            var $finalTable = $('<tr>', {class:'actual'});
            $finalTable.append($finalAppendArray);
            $('.classic').append($finalTable);
        });
        console.log( "Load was performed." );
    });
}
$(function() {

        $('#nesto').click(function(){
            $teamHomeID = $('#teamHome option:selected').attr('id');
            $teamAwayID = $('#teamAway option:selected').attr('id');
            $teamHomeName = $('#teamHome option:selected').val();
            $teamAwayName = $('#teamAway option:selected').val();
            $teamHomeGoals = $('#teamHomeGoals').val();
            $teamAwayGoals = $('#teamAwayGoals').val();
            $round = $('#round').val();
            performInsert();
        });
});
$(function(){
    getTeamsInformation();
});
function getTeamsInformation(){

    $.get( "http://localhost:8080/teams/get", function( data ) {
        $.each(data, function (key, value) {
            var $div = $('<option>', {id:value.teamID});
            $div.html(value.teamName);
            var $cloneDiv = $div.clone(true);
            $('#teamHome').append($div);
            $('#teamAway').append($cloneDiv);
        });
        console.log( "Load was performed." );
    });
}
function performInsert() {

    var data = {
        teamHomeID: $teamHomeID,
        teamAwayID: $teamAwayID,
        teamHomeName: $teamHomeName,
        teamAwayName: $teamAwayName,
        teamHomeGoals: $teamHomeGoals,
        teamAwayGoals: $teamAwayGoals,
        round: $round
    };
    $.ajax({
        type : "POST",
        contentType : "application/json",
        url : "http://localhost:8080/games/add",
        data : JSON.stringify(data),
        dataType : 'json',
        success : function(data) {
            console.log("SUCCESS: ", data);
            display(data);
        },
        error : function(e) {
            console.log("ERROR: ", e);
            display(e);
        },
        done : function(e) {
            console.log("DONE");
        }
    });
}

$(function(){
    getAllTeams();
});
function getAllTeams(){


        $.get( "http://localhost:8080/teams/get", function( data ) {
            var $counter = 1;
            $.each(data, function (key, value) {
                     var $position = $('<th>', {scope:'row'});
                         $position.html($counter);
                            $counter++;
                     var $teamName = $('<td>');
                         $teamName.html(value.teamName);
                     var $gamesPlayed = $('<td>');
                         $gamesPlayed.html(value.teamGamesPlayed);
                     var $won = $('<td>');
                         $won.html(value.teamWon);
                     var $drawn = $('<td>');
                         $drawn.html(value.teamDrawn);
                     var $lost = $('<td>');
                         $lost.html(value.teamLost);
                     var $goalsFor = $('<td>');
                         $goalsFor.html(value.teamGoalsFor);
                     var $goalsAgainst = $('<td>');
                         $goalsAgainst.html(value.teamGoalsAgainst);
                     var $goalDifference = $('<td>');
                         $goalDifference.html(value.goalDifference);
                     var $points = $('<td>');
                         $points.html(value.teamPoints);
                     var $form = $('<td>');
                         $form.html(value.teamForm);
                     var $finalArray = [$position, $teamName, $gamesPlayed, $won, $drawn, $lost, $goalsFor, $goalsAgainst, $goalDifference, $points, $form];
                     var $finalTable = $('<tr>', {class:'actual'});
                            $finalTable.append($finalArray);
                            $('.classic').append($finalTable);

            });
        console.log( "Load was performed." );
    });
}
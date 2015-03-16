
$(document).ready(function() {
    $('#search').autocomplete({

        source: [{label : "aa", value : "oo", cat : "cat ?"}]

    }).data("ui-autocomplete")._renderItem = function( ul, item ) {
        return $( "<li>" )
            .attr( "data-value", item.value )
            .append( item.label + item.cat + "<<<")
            .appendTo( ul );
    }
});
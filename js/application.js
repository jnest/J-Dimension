$(document).ready(function () {

    $('[id$=btnViewMech]').click(function () {
        $('[id$=ddlMechList]').toggle();
        $('[id$=lblMechName]').toggle();
        $('[id$=btnSelect]').toggle();        
    });

    $('[id$=btnSelect]').click(function () {
        var text = $('[id$=ddlMechList] option:selected').text();
        $('[id$=lblMechName]').text(text);        
    });

    $('[id$=lblResult]').filter(function () {
        var a = $(this);
        var b = $('#tblUser');
        var c = $('#tblComp');
        if (a.text() == "You win!") {
            b.css({ "border-color": "red" });
        }
        if (a.text() == "Computer wins!") {
            c.css({ "border-color": "red" });
        }
    });
        
});
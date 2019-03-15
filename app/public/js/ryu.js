$.get("/api/ryu", function (data) {
    // console.log(data);
    //Our data is coming back as an array.
    data.forEach(element =>
        tableCreator.createRows(element)
    );
});

const tableCreator = {
    createRows: function (item) {
        let tRow = $("<tr>");
        let move = $('<td>').text(item.move);
        let startup = $('<td>').text(item.startup);
        let active = $('<td>').text(item.active);
        let recovery = $('<td>').text(item.recovery);
        let onHit = $('<td>').text(item.onHit);
        let onBlock = $('<td>').text(item.onBlock);
        let damage = $('<td>').text(item.damage);
        let stun = $('<td>').text(item.stun);
        let type = $('<td>').text(item.attackType);

        tRow.append(move, startup, active, recovery, onHit, onBlock, damage, stun, type);
        $('table').append(tRow);
        let frameDataList = $('<ul>');
        let notesList = $('<ul>');

            //Regex to get rid of the indent spaces in this Template Literal, but also keeps the new line breaks.
            let frameDataCol = [`Start Up: ${item.startup}`,
            `Active: ${item.active}`,
            `Recovery: ${item.recovery}`,
            `On Hit: ${item.onHit}`,
            `On Block: ${item.onBlock}`,
            `Damage: ${item.damage}`,
            `Stun: ${item.stun}`,
            `Attack Type: ${item.attackType}`]



        this.advantageCheck(item.onHit);
        $(move).css('cursor', 'pointer').attr('data-toggle', 'modal');
        $(move).on('click', function () {
            $('#info').modal('toggle');
            $('#frame-data-col').empty();
            $('#move-notes').empty();        
            $('.modal-title').html(item.move);

            frameDataList = $('<ul>')
            for (let f = 0; f < frameDataCol.length; f++) {
                frameDataList.append(`<li>${frameDataCol[f]}</li>`);
            }
            $('#frame-data-col').append(frameDataList);
            if (item.notes) {
                notesList = $('<ul>');
                let moveNotes = item.notes.split('. ')
                for (let b = 0; b < moveNotes.length; b++){
                    notesList.append(`<li>${moveNotes[b]}</li>`);
                }
                $('#move-notes').append(notesList);
            }

            $('#move-img').attr('src', 'movegif');

            if (item.gif) {
                $('#move-img').attr('src', item.gif);
            }

        });
    },
    advantageCheck: function () {
        // console.log(number);
        $('table tr td').each(function () {
            if ($(this).text() <= -1) {
                $(this).css('background-color', '#FC9494');
            }
            if ($(this).text() <= -3) {
                $(this).css('background-color', '#FF2929');
            }
            if ($(this).text() == 'null') {
                $(this).text('~');
            }
        });
    }
}

$('#main-page-link').on('click', function(){
    window.location = '/'
});

$('#combo-page-link').on('click', function(){
    console.log("This goes to a combo page.")
});

$('#create-combo-button').on('click', function(){
    $('#cbutton-section').empty()
    $('#combo-modal').modal('show');
    makeCombo()


});


function makeButtons(str){
    // console.log(str);
    let button = $('<button class="get-gif">' + str + '</button>');
    $('#cbutton-section').append(button);

}

function makeCombo(){
    $.get('/api/ryu/create', function(data){
        data.forEach(element => {
            // console.log(element.move);
            makeButtons(element.move)
        });
    });
}

$('.get-gif').on('click',function(){
    console.log(this);
});
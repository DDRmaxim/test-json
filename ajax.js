$("#get-json").click(function () {
    let posting = $.post('back.php', {key: 'get'});

    posting.done(function (data) {
        console.log(data);
        let str_json = JSON.stringify(data, null, '\t');
        $('#result').html(str_json);
    });

    posting.fail(function () {
        console.log('error');
    });
});
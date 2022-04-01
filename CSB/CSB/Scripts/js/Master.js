function toastSuccess(_header, _body) {
    $('#toast-header').text(_header);
    $('#toast-body').text(_body);
    $('.toast').css('background-color', 'rgb(17 165 42)');
    $('.toast-header').css('background-color', 'rgb(17 165 42)');
    $('.toast').css('box-shadow', '0 2px 6px #2e933a');
    $('.toast-body').css('background-color', ' rgb(17 165 42)');
    $('.toast').toast({ delay: 2500 });
    $('.toast').toast('show');
}

function toastError(_header, _body) {
    $('#toast-header').text(_header);
    $('#toast-body').text(_body);
    $('.toast').css('background-color', 'rgb(183 22 22)');
    $('.toast-header').css('background-color', 'rgb(183 22 22)');
    $('.toast').css('box-shadow', '0 2px 6px #c95e5e');
    $('.toast-body').css('background-color', 'rgb(183 22 22)');
    $('.toast').toast({ delay: 2500 });
    $('.toast').toast('show');
}


var num = 1;
function anyThing() {
    setTimeout(function () {
        $('.stepper').nextStep();
    }, 1500);
}



$(function () {
    $('.stepper').activateStepper();
});

$('body').on('keydown', 'input, select, textarea', function (e) {
    var self = $(this),
        form = self.parents('form:eq(0)'),
        focusable, next, prev;
    if (e.keyCode == 13) {
       e.preventDefault();
        focusable = form.find('input,.collapsible-header,button,textarea').filter(':visible');
        next = focusable.eq(focusable.index(this) + 1);
        console.log(next[0]);

        if (next.length) {
            if (next)
                next.focus();
            if (next[0].className === 'collapsible-header') {
                var x = next[0];
                next.focus();
                next.click();
                var data = $('.collapsible-header').nextUntil(".collapsible-body input");
                // $(data[num] +'input').focus();
                console.log(data[num])
                $(data[num]).find('#Salary').focus();
                ++num
            }
        } else {
            console.log('endd !!')
        }

        return false;
    }
})

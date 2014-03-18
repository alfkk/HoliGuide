/* Limit date function */
$('.input-daterange').datepicker({
	startDate: "today",
	autoclose: true
});

var d = new Date();

var month = d.getMonth()+1;
var day = d.getDate();

var output = (month<10 ? '0' : '') + month + '/' +
	(day<10 ? '0' : '') + day + '/' + d.getFullYear();

$('input[name=from_date]').val(output).datepicker('update');
$('input[name=to_date]').val(output).datepicker('update');

$('input[name=from_date2]').val("06/01/2014").datepicker('update');
$('input[name=to_date2]').val("06/03/2014").datepicker('update');
/* End limit date function */

/* Search box function */
$('.combobox').combobox();
/* End search box function */

/* Add comment function */
$('#add-comment').click(function(event) {
	var text = $('textarea.comment').val();
	if(text=="") {
		$('.comment').parent().parent().addClass("has-error");
		$('.comment').popover('show');
		$('.comment').focus();
		event.preventDefault();
		return;
	}
	$("div.holder1").jPagesTwo("destroy");
	$('.cal').popover('destroy');
	$("ul.chosen").append('<li class="list-group-item comment-item"><a class="delete"><span class="glyphicon glyphicon-remove"></span></a>' +
			'<a class="cal"><span class="glyphicon glyphicon-calendar"></span></a><div>Comment<span class="cal"> (Day 1)</span></div><div>' +
			text + '</div></li>');
	$('textarea.comment').val('');
	sortList($('#itemContainer1'), "li", "span.cal");
	popoverSet();
	paginateChosen();
	event.preventDefault();
});
$('.comment').focusout(function() {
	$('.comment').parent().parent().removeClass("has-error");
	$('.comment').popover('destroy');
});
/* End add comment function */

/* Add itinerary function */
$('#add-itinerary').click(function(event) {
	var text = $('textarea.itinerary').val();
	if(text=="") {
		$('.itinerary').parent().parent().addClass("has-error");
		$('.itinerary').popover('show');
		$('.itinerary').focus();
		event.preventDefault();
		return;
	}
	$("div.holder1").jPagesTwo("destroy");
	$('.cal').popover('destroy');
	$("ul.chosen").append('<li class="list-group-item itinerary-item"><a class="delete"><span class="glyphicon glyphicon-remove"></span></a>' +
			'<a class="cal"><span class="glyphicon glyphicon-calendar"></span></a><div>Custom Itinerary<span class="cal"> (Day 1)</span></div><div>' +
			text + '</div></li>');
	$('textarea.itinerary').val('');
	sortList($('#itemContainer1'), "li", "span.cal");
	popoverSet();
	paginateChosen();
	event.preventDefault();
});
$('.itinerary').focusout(function() {
	$('.itinerary').parent().parent().removeClass("has-error");
	$('.itinerary').popover('destroy');
});
/* End add itinerary function */

/* Add search function */
var $products = $('.selection li');
var typingTimer;                //timer identifier
var doneTypingInterval = 1000;  //time in ms, 5 second for example
$('.filter').keyup(function() {
    clearTimeout(typingTimer);
    typingTimer = setTimeout(doneTyping, doneTypingInterval);
});

$('.filter').keydown(function(){
    clearTimeout(typingTimer);
});

$('#city').change(function() {
	$('.filter').keyup();
});

$('#category').change(function() {
	$('.filter').keyup();
});

function doneTyping() {
	$("div.holder2").jPages("destroy");
	var re = new RegExp($('.filter').val(), "i"); // "i" for case-insensitive
    var re2 = new RegExp($('#city').val(), "i"); // "i" for case-insensitive
    var re3 = new RegExp($('#category').val(), "i"); // "i" for case-insensitive
    $products.show().filter(function() {
        return !re.test($(this).text())
        	|| !re2.test($(this).children('.country').text())
        	|| !re3.test($(this).children('.category').text());
    }).hide();
    paginateSelection();
}

$("input[type='text']").on("click", function () {
	$(this).select();
});
/* End add search function */

/* Add delete function */
$(".chosen").on('click','.delete',function(e){
    $(this).parent().remove();
    e.preventDefault();
});
/* End add delete function */

/* Add remove function */
$(".chosen").on('click','.remove',function(e){
	destroyJPages();
	$(this).attr('class', 'add');
	$(this).children('span').attr('class', 'glyphicon glyphicon-plus');
	$(this).parents('li').find('a.cal').remove();
	$(this).parents('li').find('span.cal').remove();
	var text = $(this).parent().html();
    $("ul.selection").append('<li class="list-group-item">' + text + '</li>');
    $(this).parent().remove();
    $products = $('.selection li');
    paginate();
    e.preventDefault();
});
/* End add remove function */

/* Add add function */
$(".selection").on('click','.add',function(e){
	destroyJPages();
	if($('.removable').text() != "") {
		$('.removable').remove();
	}
	$(this).attr('class', 'remove');
	$(this).children('span').attr('class', 'glyphicon glyphicon-remove');
	$(this).parents('li').find('a.remove').after('<a class="cal"><span class="glyphicon glyphicon-calendar"></span></a>');
	$(this).parents('li').find('.name').append('<span class="cal"> (Day 1)</span>');
	var text = $(this).parent().html();
    $("ul.chosen").append('<li class="list-group-item">' + text + '</li>');
    $(this).parent().remove();
    $products = $('.selection li');
    $('.cal').popover('destroy');
    popoverSet();
    paginate();
    e.preventDefault();
});
/* End add add function */

/* Add clear all function */
$('.reset').click(function() {
    location.reload();
});
/* End add clear all function */

/* Add pagination function */
function destroyJPages() {
	$("div.holder1").jPagesTwo("destroy");
	$("div.holder2").jPages("destroy");
}
function paginate() {
	paginateChosen();
	paginateSelection();
}
function paginateSelection() {
	$("div.holder2").jPages({
		containerID : "itemContainer2",
		perPage: 4
	});
}
function paginateChosen() {
	$("div.holder1").jPagesTwo({
		containerID : "itemContainer1",
		perPage: 3
	});
	if($('#itemContainer1 li').length == 0) {
		$("div.holder1").jPagesTwo("destroy");
		$('#itemContainer1').parent('div').find('ul').after('<div class="removable alert alert-info">Please add some itinerary from the selection on the left.</div>');
	}
}
paginate();
/* End add pagination function */

/* Add calendar function */
function popoverSet() {
	$('.cal').popover({
		html : true,
		trigger: 'click',
		content: $('#popover_content_wrapper').html()
	});
	
	$('.cal').click(function() {
		$(this).parents('li').find('.day-choice').focus();
	});
}

$(document).on('focusout','.day-choice',function() {
	$('.cal').popover('hide');
});

$(document).on('change','.day-choice',function() {
	var dayText = $(this).parents('li').find('.day-choice option:selected').text();
	$(this).parents('li').find('span.cal').text(' (' + dayText + ')');
    $('.cal').popover('hide');
    $("div.holder1").jPagesTwo("destroy");
    sortList($('#itemContainer1'), "li", "span.cal");
    paginateChosen();
})

function sortList(parent, childSelector, keySelector) {
    var items = parent.children(childSelector).sort(function(a, b) {
        var vA = $(keySelector, a).text();
        var vB = $(keySelector, b).text();
        return (vA < vB) ? -1 : (vA > vB) ? 1 : 0;
    });
    parent.append(items);
}
/* End add calendar function */

/* Populate day-choice function */
function parseDate(str) {
	var mdy = str.split('/');
	return new Date(mdy[2], mdy[0]-1, mdy[1]);
}

function daydiff(first, second) {
	return (second-first) / (1000*60*60*24) + 1;
}

$('input[name=from_date]').change(function() {
	var first = parseDate($('input[name=from_date]').val());
	var second = parseDate($('input[name=to_date]').val());
	changeDayChoice(daydiff(first, second));
});

$('input[name=to_date]').change(function() {
	var first = parseDate($('input[name=from_date]').val());
	var second = parseDate($('input[name=to_date]').val());
	changeDayChoice(daydiff(first, second));
});

function changeDayChoice(dateCnt) {
	$('.cal').popover('destroy');
	$('select.day-choice').empty();
	for ( var i = 1; i <= dateCnt; i++ ) {
		$('select.day-choice').append('<option>Day ' + i + '</option>');
	}
	popoverSet();
}
changeDayChoice(1);
/* End populate day-choice function */
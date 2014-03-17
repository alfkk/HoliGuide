/* Add filter function */
var $products = $('.guide');
var typingTimer;                //timer identifier
var doneTypingInterval = 500;  //time in ms, 5 second for example

$('.filter').keyup(function() {
    clearTimeout(typingTimer);
    typingTimer = setTimeout(doneTyping, doneTypingInterval);
});

$('.filter').keydown(function(){
    clearTimeout(typingTimer);
});

function doneTyping() {
	destroyJPages();
	var re1 = new RegExp($('.filter-name').val(), "i"); // "i" for case-insensitive
	var re2 = new RegExp($('.filter-description').val(), "i"); // "i" for case-insensitive
	$products.show().filter(function() {
	    return !re1.test($(this).find('h2.guide-name').text())
	    	|| !re2.test($(this).find('div.guide-description').text());
	}).hide();
	paginate();
}
/* End add filter function */

/* Sort function */
function sortAsc(parent, childSelector, keySelector) {
    var items = parent.children(childSelector).sort(function(a, b) {
        var vA = $(keySelector, a).text();
        var vB = $(keySelector, b).text();
        return (vA < vB) ? -1 : (vA > vB) ? 1 : 0;
    });
    parent.append(items);
}

function sortDesc(parent, childSelector, keySelector) {
    var items = parent.children(childSelector).sort(function(a, b) {
        var vA = $(keySelector, a).text();
        var vB = $(keySelector, b).text();
        return (vA < vB) ? 1 : (vA > vB) ? -1 : 0;
    });
    parent.append(items);
}

sortAsc($('#itemContainer'), "div", "h2.guide-name");

$('#sort-guide').change(function() {
	if($(this).val() == 'gAsc') {
		destroyJPages();
		sortAsc($('#itemContainer'), "div", "h2.guide-name");
		paginate();
	} else if($(this).val() == 'gDesc') {
		destroyJPages();
		sortDesc($('#itemContainer'), "div", "h2.guide-name");
		paginate();
	} else if($(this).val() == 'rAsc') {
		destroyJPages();
		sortAsc($('#itemContainer'), "div", "span.guide-rating");
		paginate();
	} else if($(this).val() == 'rDesc') {
		destroyJPages();
		sortDesc($('#itemContainer'), "div", "span.guide-rating");
		paginate();
	}
});
/* End sort function */

/* Add pagination function */
function destroyJPages() {
	$("div.holder").jPages("destroy");
}

function paginate() {
	$("div.holder").jPages({
		containerID : "itemContainer",
		perPage: 4
	});
}
paginate();

$("div.holder").children('a').click(function() {
	$('html, body').animate({ scrollTop: 0 }, 'slow');
});
/* End add pagination function */
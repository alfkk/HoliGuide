/* Add filter function */
var $products = $('.itinerary');
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
	var re1 = new RegExp($('.filter-country').val(), "i"); // "i" for case-insensitive
	var re2 = new RegExp($('.filter-status').val(), "i"); // "i" for case-insensitive
	$products.show().filter(function() {
	    return !re1.test($(this).find('div.country-name').text())
	    	|| !re2.test($(this).find('span.guide-status').text());
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

sortAsc($('#itemContainer'), "div", "div.country-name");

$('#sort-itinerary').change(function() {
	if($(this).val() == 'cAsc') {
		destroyJPages();
		sortAsc($('#itemContainer'), "div", "div.country-name");
		paginate();
	} else if($(this).val() == 'cDesc') {
		destroyJPages();
		sortDesc($('#itemContainer'), "div", "div.country-name");
		paginate();
	} else if($(this).val() == 'sAsc') {
		destroyJPages();
		sortDesc($('#itemContainer'), "div", "span.guide-status");
		paginate();
	} else if($(this).val() == 'sDesc') {
		destroyJPages();
		sortAsc($('#itemContainer'), "div", "span.guide-status");
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
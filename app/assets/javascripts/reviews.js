$(document).ready(function(){
})

toggleStar = function(event) {
  event.target.className == "fa fa-star-o" ? fillStar(event) : emptyStar(event)
}

fillStar = function(event) {
  event.target.className = "fa fa-star";
  review_rating.value =  parseInt($('#review_rating')[0].value) + 1;
}

emptyStar = function(event) {
  event.target.className = "fa fa-star-o";
  review_rating.value = parseInt($('#review_rating')[0].value) - 1;
}

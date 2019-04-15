$(function(){

  $('.city-autocompletion').autocomplete({
    source: '/cities'
  });
  $('.golf-autocompletion').autocomplete({
    source: '/golfs_json'
  });

});

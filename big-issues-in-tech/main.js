var info1bnt = $('.info1bnt');
var info2bnt = $('.info2bnt');
var info1 = $('.info1')
var info2 = $('.info2')
var info1div = $('.info1div')
var info2div = $('.info2div')

info1bnt.on ("click", doSomething);
info2bnt.on ("click", doSomething2);

function doSomething (event){
  event.preventDefault();
  var info1div = $('.info1').val();
  info1div.append(`<h6> The chart showed the dose of radiation received by the brain as rising from left to right, with the increasing frequency of the wireless signal. The slope was gentle at first, but when the line reached the wireless frequencies associated with computer networking, it shot straight up, indicating a dangerous level of exposure.</h6>
  <p class="info1">https://www.nytimes.com/2019/07/16/science/5g-cellphones-wireless-cancer.html</p>`)
}

function doSomething2 (event){
  event.preventDefault();
  var info2div = $('.info2').val();
  info2div.append = $(`<h6>studies tell us that RF radiation is harmful at even low and short exposures, and that it impacts children and fetuses more rapidly than adults. Among the findings are that RF radiation is carcinogenic, causes DNA damage, affects fertility and the endocrine system, and has neurological impacts. </h6>
  <p class="info2">https://www.localfutures.org/is-5g-worth-the-risks/</p>`)
}

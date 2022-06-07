Question = function() {
  this.quizCurrent = 0;
  this.score = 0;
  this.seconds = 200;
  this.timing = this.seconds;
  this.container = $('#trivia');
  this.participationId = null;
 }

 Question.prototype.init = function() {
  $('div.timer strong').text(this.seconds)

  this.start();
 }
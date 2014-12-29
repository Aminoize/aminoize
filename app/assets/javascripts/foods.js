$(function () {
  $(".acids").on('click', 'button', function() {
    $(this).closest('button').remove();
  });
});

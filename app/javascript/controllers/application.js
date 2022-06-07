import { Application } from "@hotwired/stimulus"

const application = Application.start()
    //= require jquery.countdown
    // Configure Stimulus development experience
application.debug = false
window.Stimulus = application
var countdown = function() {
    $('#clock').countdown({ //clock là thẻ chứa bộ đếm đồng hồ
        until: $('#remaining_time').val(), //thời gian đếm
        format: 'HMS', //địn dạng thời gian
        onExpiry: function() {
            $('.submit-time-out').hidden(); //submit khi hết giờ
        }
    });
}

document.addEventListener('turbolinks:load', countdown);
$(document).on('page:update', countdown);
export { application }